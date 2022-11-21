package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.fma.SlotAssignmentStrategy */
/* loaded from: classes.dex */
public interface SlotAssignmentStrategy<T extends Vector<T>> {
    int calculateNumberOfSlots(Array<SlotAssignment<T>> array);

    void removeSlotAssignment(Array<SlotAssignment<T>> array, int i);

    void updateSlotAssignments(Array<SlotAssignment<T>> array);
}
