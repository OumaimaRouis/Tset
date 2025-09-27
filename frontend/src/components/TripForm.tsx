import { useState } from "react";
import axios from "axios";

interface TripFormProps {
  onTripCreated: (trip: any) => void; // you can refine "any" later with a Trip type
}

export default function TripForm({ onTripCreated }: TripFormProps) {
  const [form, setForm] = useState({
    current_location: "",
    pickup_location: "",
    dropoff_location: "",
    current_cycle_hours: 0
  });

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setForm({ ...form, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e:React.FormEvent) => {
    e.preventDefault();
    try {
      // POST trip
      const res = await axios.post("http://127.0.0.1:8000/api/trips/", form);
      onTripCreated(res.data); // pass created trip to parent
    } catch (err) {
      console.error(err);
      alert("Trip creation failed");
    }
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-2">
      <input name="current_location" placeholder="Current Location" onChange={handleChange} />
      <input name="pickup_location" placeholder="Pickup Location" onChange={handleChange} />
      <input name="dropoff_location" placeholder="Dropoff Location" onChange={handleChange} />
      <input name="current_cycle_hours" type="number" placeholder="Current Cycle Hours" onChange={handleChange} />
      <button type="submit">Create Trip</button>
    </form>
  );
}
