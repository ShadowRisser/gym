import Image from "next/image";

export default function Home() {
  return (
    <main className="min-h-screen">
      <section className="relative h-screen flex items-center justify-center bg-gradient-to-b from-gray-900 to-gray-800">
        <div className="text-center text-white">
          <h1 className="text-6xl font-bold mb-4">Iron Forge Gym</h1>
          <p className="text-xl">Transform Your Body, Transform Your Life</p>
        </div>
      </section>
    </main>
  );
}
