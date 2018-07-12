// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_enemy_dog (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE ENEMYINFO
defaultmdl="german_sheperd_dog"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
ENEMYINFO -- this AI when spawned will get a snapshot of perfect info about all enemies
*/
main()
{
	self.animTree = "dog.atr";
	self.team = "axis";
	self.type = "dog";
	self.accuracy = 0.2;
	self.health = 200;
	self.weapon = "dog_bite";
	self.secondaryweapon = "dog_bite";
	self.sidearm = "";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	self setEngagementMinDist( 256.000000, 0.000000 );
	self setEngagementMaxDist( 768.000000, 1024.000000 );

	character\character_sp_german_sheperd_dog::main();
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\character_sp_german_sheperd_dog::precache();

	precacheItem("dog_bite");
	precacheItem("dog_bite");
	precacheItem("fraggrenade");
}
