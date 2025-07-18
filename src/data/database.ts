// Import Supabase client
import { supabase } from "../lib/supabaseClient";

// Select all journal prompts
export const selectAll = async () => {

    const selectAllQueryTest = supabase
                                    .from('journal_entry')
                                    .select(`
                                        *, 
                                        journal_content(text, title), 
                                        journal_prompt(
                                            prompt, 
                                            journal_prompt_category(name)
                                        ), 
                                        emoji(
                                            name, 
                                            shortcode,
                                            unicode,
                                            utf8
                                        )`
                                    );

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
    
    // return data;
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

    console.log(data);

    // return data;

};

// Insert one journal entry
export const insertOne = async () => {
    // TODO: define input object structure
    // journal prompt prompt/id, emoji name/id, content title and text, user email

    // journal_prompt
    // get journal prompt id
    const selectJournalPromptQuery = supabase
                                        .from('journal_prompt')
                                        .select()
                                        .eq('prompt_id', '')
                                        .eq('prompt', '')
                                        .single();
                                        
    const { data: journalPromptData, error:journalPromptError } = await selectJournalPromptQuery
    if (journalPromptError) throw journalPromptError

    console.log(journalPromptData);    

    // emoji
    // get emoji id
    const selectEmojiQuery = supabase
                                .from('emoji')
                                .select()
                                .eq('name', '')
                                .single();

    const { data: emojiData, error: emojiError } = await selectEmojiQuery
    if (emojiError) throw emojiError
    
    console.log(emojiData);    
    
    // journal_content
    // insert journal content title and text
    const insertJournalContentQuery = supabase
                                        .from('journal_content')
                                        .insert({title: '', text: ''})
                                        .select()
                                        .single();

    const { data: journalContentData, error: journalContentError } = await insertJournalContentQuery
    if (journalContentError) throw journalContentError

    console.log(journalContentData);
    
    // journal_entry
    // get user email
    // insert journal context id, -journal prompt id, and emoji id
    const insertJournalEntryQuery = supabase
                                        .from('journal_entry')
                                        .insert({user_id: '', journal_content_id: '', journal_prompt_id: '', emoji_id: ''})
                                        .select()
                                        .single();

    const { data: journalEntryData, error: journalEntryError } = await insertJournalEntryQuery
    if (journalEntryError) throw journalEntryError

    console.log(journalEntryData);
    
};

// Update journal prompt
export const updateOne = async () => {
    // TODO: define input object structure
    // journal prompt prompt/id, emoji name/id, content title and text, user email

    // get ids?
    // if input can contain relevant ids, it would be easier to update the tables


    // update journal content


    // update journal prompt


    // update emoji


    // update journal entry


};

// Delete journal entry
export const deleteOne = async (inputId: string) => {
    const deleteOneQuery = supabase
                                .from('journal_entry')
                                .delete()
                                .eq('id', inputId)

    const { data, error } = await deleteOneQuery
    if (error) throw error

    console.log(data);
    // return data;
};

export const selectAllEmojis = async () => {
    const allEmojisQuery = supabase
                                .from('emoji')
                                .select()
    const { data, error } = await allEmojisQuery
    if (error) throw error

    return data;
}