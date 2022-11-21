package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.fma.FreeSlotAssignmentStrategy */
/* loaded from: classes.dex */
public class FreeSlotAssignmentStrategy<T extends Vector<T>> implements SlotAssignmentStrategy<T> {
    @Override // com.badlogic.gdx.p032ai.fma.SlotAssignmentStrategy
    public int calculateNumberOfSlots(Array<SlotAssignment<T>> array) {
        return array.size;
    }

    @Override // com.badlogic.gdx.p032ai.fma.SlotAssignmentStrategy
    public void removeSlotAssignment(Array<SlotAssignment<T>> array, int i) {
        array.removeIndex(i);
    }

    @Override // com.badlogic.gdx.p032ai.fma.SlotAssignmentStrategy
    public void updateSlotAssignments(Array<SlotAssignment<T>> array) {
        for (int i = 0; i < array.size; i++) {
            array.get(i).slotNumber = i;
        }
    }
}
