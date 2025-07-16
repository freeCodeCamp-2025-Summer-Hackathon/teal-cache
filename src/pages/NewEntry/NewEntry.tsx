import { useState } from "react";
import TextArea from "../../components/form/input/TextArea";
import Select from "../../components/form/Select";
import DropzoneComponent from "../../components/form/form-elements/DropZone";
import Button from "../../components/ui/button/Button";

interface Option {
  value: string;
  label: string;
}

const moodOptions: Option[] = [
  { value: "happy", label: "😊 Happy" },
  { value: "sad", label: "😢 Sad" },
  { value: "excited", label: "🤩 Excited" },
  { value: "angry", label: "😠 Angry" },
  { value: "anxious", label: "😰 Anxious" },
  { value: "relaxed", label: "😌 Relaxed" },
  { value: "tired", label: "😴 Tired" },
  { value: "surprised", label: "😲 Surprised" },
  { value: "confused", label: "😕 Confused" },
  { value: "bored", label: "🥱 Bored" },
];

export default function NewEntry() {
  const [selectedMood, setSelectedMood] = useState<string>("");

  const handleMoodChange = (value: string) => {
    setSelectedMood(value);
  };

  return (
    <div>
      <h2 className="text-2xl font-semibold text-gray-800 dark:text-white/90 mb-12 ">
        New Entry
      </h2>

      <div className="space-y-12 max-w-3xl mx-auto w-full">
        {" "}
        <TextArea
          placeholder="How are you feeling today?"
          rows={6}
          className="resize-none"
        />
        <Select
          options={moodOptions}
          placeholder="Select your mood"
          onChange={handleMoodChange}
          defaultValue=""
          className=""
        />
        <DropzoneComponent title="Add Photos" />
        <div className="flex justify-end">
          <Button size="md">Save</Button>
        </div>
      </div>
    </div>
  );
}
