"use client";

import type { FC } from "react";
import { useRef } from "react";
import { motion, useInView } from "framer-motion";
import { Dumbbell, Users, Heart, Trophy } from "lucide-react";

export const AboutSection: FC = () => {
  const ref = useRef(null);
  const inView = useInView(ref, { once: true });

  const stats = [
    { icon: Dumbbell, label: "Equipment", value: "200+" },
    { icon: Users, label: "Members", value: "5,000+" },
    { icon: Heart, label: "Classes/Week", value: "80+" },
    { icon: Trophy, label: "Years", value: "15+" },
  ];

  return (
    <section ref={ref} className="py-20 bg-gray-50">
      <div className="container mx-auto px-4">
        <h2 className="text-4xl font-bold text-center mb-12">Why Choose Us</h2>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-8">
          {stats.map((stat, i) => (
            <motion.div
              key={stat.label}
              initial={{ opacity: 0, y: 20 }}
              animate={inView ? { opacity: 1, y: 0 } : {}}
              transition={{ delay: i * 0.1 }}
              className="text-center"
            >
              <stat.icon className="w-12 h-12 mx-auto mb-4 text-blue-600" />
              <div className="text-3xl font-bold mb-2">{stat.value}</div>
              <div className="text-gray-600">{stat.label}</div>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
};
