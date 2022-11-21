package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.fma.SlotAssignment */
/* loaded from: classes.dex */
public class SlotAssignment<T extends Vector<T>> {
    public FormationMember<T> member;
    public int slotNumber;

    public SlotAssignment(FormationMember<T> formationMember) {
        this(formationMember, 0);
    }

    public SlotAssignment(FormationMember<T> formationMember, int i) {
        this.member = formationMember;
        this.slotNumber = i;
    }
}
