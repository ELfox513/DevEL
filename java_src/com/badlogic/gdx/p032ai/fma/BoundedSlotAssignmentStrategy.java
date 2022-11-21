package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.fma.BoundedSlotAssignmentStrategy */
/* loaded from: classes.dex */
public abstract class BoundedSlotAssignmentStrategy<T extends Vector<T>> implements SlotAssignmentStrategy<T> {
    @Override // com.badlogic.gdx.p032ai.fma.SlotAssignmentStrategy
    public int calculateNumberOfSlots(Array<SlotAssignment<T>> array) {
        int i = -1;
        for (int i2 = 0; i2 < array.size; i2++) {
            int i3 = array.get(i2).slotNumber;
            if (i3 >= i) {
                i = i3;
            }
        }
        return i + 1;
    }

    @Override // com.badlogic.gdx.p032ai.fma.SlotAssignmentStrategy
    public abstract void updateSlotAssignments(Array<SlotAssignment<T>> array);

    @Override // com.badlogic.gdx.p032ai.fma.SlotAssignmentStrategy
    public void removeSlotAssignment(Array<SlotAssignment<T>> array, int i) {
        int i2 = array.get(i).slotNumber;
        for (int i3 = 0; i3 < array.size; i3++) {
            SlotAssignment<T> slotAssignment = array.get(i3);
            int i4 = slotAssignment.slotNumber;
            if (i4 >= i2) {
                slotAssignment.slotNumber = i4 - 1;
            }
        }
        array.removeIndex(i);
    }
}
