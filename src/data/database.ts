// Import Supabase client
import { supabase } from "../lib/supabaseClient";

// Select all journal prompts
export const selectAll = async () => {

    const selectAllQuery = supabase
                                    .from('journal_entry')
                                    .select(`
                                        *, 
                                        journal_content(*), 
                                        journal_prompt(
                                            *, 
                                            journal_prompt_category(*)
                                        ), 
                                        emoji(*)`
                                    );

    const { data, error } = await selectAllQuery
    if (error) throw error

    console.log(data);
    return data;
};

// Select single journal prompt
export const selectOne = async (userId: string) => {

    const selectOneQuery = supabase
                                    .from('journal_entry')
                                    .select(`
                                        *, 
                                        journal_content(*), 
                                        journal_prompt(
                                            *, 
                                            journal_prompt_category(*)
                                        ), 
                                        emoji(*)`
                                    )
                                    .eq('user_id', userId)
                                    .limit(1)
                                    .single();

    const { data, error } = await selectOneQuery;
    if (error) throw error

    return data;
};

// WIP
// Insert one journal entry
export const insertOne = async (inputObject) => {
    // TODO: define input object structure
    // journal prompt prompt/id, emoji name/id, content title and text, user email

    // journal_prompt
    // get journal prompt id
    const selectJournalPromptQuery = supabase
                                        .from('journal_prompt')
                                        .select()
                                        .eq('id', inputObject.journal_prompt_id)
                                        .limit(1)
                                        .single();
                                        
    const { data: journalPromptData, error:journalPromptError } = await selectJournalPromptQuery
    if (journalPromptError) throw journalPromptError

    // emoji
    // get emoji id
    const selectEmojiQuery = supabase
                                .from('emoji')
                                .select()
                                .eq('id', inputObject.emoji_id)
                                .limit(1)
                                .single();

    const { data: emojiData, error: emojiError } = await selectEmojiQuery
    if (emojiError) throw emojiError
    
    // journal_content
    // insert journal content title and text
    const insertJournalContentQuery = supabase
                                        .from('journal_content')
                                        .insert({title: inputObject.journal_content.title, text: inputObject.journal_content.text})
                                        .select()
                                        .limit(1)
                                        .single();

    const { data: journalContentData, error: journalContentError } = await insertJournalContentQuery
    if (journalContentError) throw journalContentError

    // journal_entry
    // get user email
    // insert journal context id, -journal prompt id, and emoji id
    const insertJournalEntryQuery = supabase
                                        .from('journal_entry')
                                        .insert({user_id: inputObject.user_email, journal_content_id: journalContentData.id, journal_prompt_id: journalPromptData.id, emoji_id: emojiData.id})
                                        .select()
                                        .limit(1)
                                        .single();

    const { data: journalEntryData, error: journalEntryError } = await insertJournalEntryQuery
    if (journalEntryError) throw journalEntryError

    console.log(`Successfully created journal entry:\n`, journalEntryData);
};


// Update journal prompt
export const updateOne = async (inputObject) => {
    // TODO: define input object structure
    // If input cannot containt ids, need to consider getting ids
    // journal prompt prompt/id, emoji name/id, content title and text, user email


    
    
    // update journal prompt
    const selectJournalPromptQuery = supabase
                                        .from('journal_prompt')
                                        .select()
                                        .eq('id', inputObject.journal_prompt_id)
                                        .limit(1)
                                        .single();
                                        
    const { data: journalPromptData, error:journalPromptError } = await selectJournalPromptQuery
    if (journalPromptError) throw journalPromptError
    
    // update emoji
    const selectEmojiQuery = supabase
                                .from('emoji')
                                .select()
                                .eq('id', inputObject.emoji_id)
                                .limit(1)
                                .single();

    const { data: emojiData, error: emojiError } = await selectEmojiQuery
    if (emojiError) throw emojiError

    // update journal content
    const insertJournalContentQuery = supabase
                                        .from('journal_content')
                                        .update({title: inputObject.journal_content.title, text: inputObject.journal_content.text})
                                        .eq('id', inputObject.journal_content.id)
                                        .select()
                                        .limit(1)
                                        .single();

    const { data: journalContentData, error: journalContentError } = await insertJournalContentQuery
    if (journalContentError) throw journalContentError

    // update journal entry
    const insertJournalEntryQuery = supabase
                                        .from('journal_entry')
                                        .update({user_id: inputObject.user_email, journal_content_id: journalContentData.id, journal_prompt_id: journalPromptData.id, emoji_id: emojiData.id})
                                        .eq('id', inputObject.id)
                                        .select()
                                        .limit(1)
                                        .single();

    const { data: journalEntryData, error: journalEntryError } = await insertJournalEntryQuery
    if (journalEntryError) throw journalEntryError

    console.log(`Successfully updated journal entry:\n`, journalEntryData);

};

// Delete journal entry
// Deletes row from journal entry table and retains data in,
// journal content, journal prompt, 
export const deleteOne = async (inputId: string) => {
    const deleteOneQuery = supabase
                                .from('journal_entry')
                                .delete()
                                .eq('id', inputId)

    const { data, error } = await deleteOneQuery
    if (error) throw error

    return data;
};

// Select all emojis
export const selectAllEmojis = async () => {
    const allEmojisQuery = supabase
                                .from('emoji')
                                .select()
    const { data, error } = await allEmojisQuery
    if (error) throw error

    return data;
}