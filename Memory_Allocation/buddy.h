#ifndef	__BUDDY_H__
#define __BUDDY_H__

struct buddy;
struct buddy* buddy_new(int size);
void buddy_destroy(struct buddy* self);

int buddy_alloc (struct buddy* self, int size);
int buddy_free (struct buddy* self, int offset);

int buddy_size (struct buddy* self, int offset);
int buddy_dump (struct buddy* self);

#endif//__BUDDY_H
