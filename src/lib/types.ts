export interface GymClass {
  id: string; name: string; category: string; description: string;
  duration: number; intensity: "beginner" | "intermediate" | "advanced";
  image: string; trainer: string; maxCapacity: number; schedule: string[];
}
export interface Trainer { id: string; name: string; role: string; bio: string; image: string; specialties: string[]; socialLinks?: { instagram?: string; twitter?: string; }; }
export interface Review { id: string; name: string; rating: number; text: string; date: string; }
export interface PricingPlan { id: string; name: string; price: number; period: string; description: string; features: string[]; highlighted?: boolean; }
