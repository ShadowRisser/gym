type User = { id: string; email: string; name?: string; };
const users: Map<string, User> = new Map();
export async function createUser(data: { email: string; name?: string }): Promise<User> {
  const id = crypto.randomUUID(); const user = { id, ...data };
  users.set(id, user); return user;
}
export async function getUserByEmail(email: string): Promise<User | undefined> {
  return Array.from(users.values()).find(u => u.email === email);
}
export async function getUserById(id: string): Promise<User | undefined> {
  return users.get(id);
}
