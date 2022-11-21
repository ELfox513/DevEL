package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.p032ai.utils.Location;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.fma.Formation */
/* loaded from: classes.dex */
public class Formation<T extends Vector<T>> {

    /* renamed from: a */
    public Array<SlotAssignment<T>> f3278a;

    /* renamed from: b */
    public Location<T> f3279b;

    /* renamed from: c */
    public FormationPattern<T> f3280c;

    /* renamed from: d */
    public SlotAssignmentStrategy<T> f3281d;

    /* renamed from: e */
    public FormationMotionModerator<T> f3282e;

    /* renamed from: f */
    public final T f3283f;

    /* renamed from: g */
    public final Matrix3 f3284g;

    /* renamed from: h */
    public final Location<T> f3285h;

    public Formation(Location<T> location, FormationPattern<T> formationPattern) {
        this(location, formationPattern, new FreeSlotAssignmentStrategy(), null);
    }

    /* renamed from: a */
    public final int m24391a(FormationMember<T> formationMember) {
        int i = 0;
        while (true) {
            Array<SlotAssignment<T>> array = this.f3278a;
            if (i < array.size) {
                if (array.get(i).member == formationMember) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    public Location<T> getAnchorPoint() {
        return this.f3279b;
    }

    public FormationMotionModerator<T> getMotionModerator() {
        return this.f3282e;
    }

    public FormationPattern<T> getPattern() {
        return this.f3280c;
    }

    public SlotAssignment<T> getSlotAssignmentAt(int i) {
        return this.f3278a.get(i);
    }

    public int getSlotAssignmentCount() {
        return this.f3278a.size;
    }

    public SlotAssignmentStrategy<T> getSlotAssignmentStrategy() {
        return this.f3281d;
    }

    public void setAnchorPoint(Location<T> location) {
        this.f3279b = location;
    }

    public void setMotionModerator(FormationMotionModerator<T> formationMotionModerator) {
        this.f3282e = formationMotionModerator;
    }

    public void setPattern(FormationPattern<T> formationPattern) {
        this.f3280c = formationPattern;
    }

    public void setSlotAssignmentStrategy(SlotAssignmentStrategy<T> slotAssignmentStrategy) {
        this.f3281d = slotAssignmentStrategy;
    }

    public Formation(Location<T> location, FormationPattern<T> formationPattern, SlotAssignmentStrategy<T> slotAssignmentStrategy) {
        this(location, formationPattern, slotAssignmentStrategy, null);
    }

    public boolean addMember(FormationMember<T> formationMember) {
        int i = this.f3278a.size;
        if (this.f3280c.supportsSlots(i + 1)) {
            this.f3278a.add(new SlotAssignment<>(formationMember, i));
            updateSlotAssignments();
            return true;
        }
        return false;
    }

    public boolean changePattern(FormationPattern<T> formationPattern) {
        if (formationPattern.supportsSlots(this.f3278a.size)) {
            setPattern(formationPattern);
            updateSlotAssignments();
            return true;
        }
        return false;
    }

    public void updateSlotAssignments() {
        this.f3281d.updateSlotAssignments(this.f3278a);
        this.f3280c.setNumberOfSlots(this.f3281d.calculateNumberOfSlots(this.f3278a));
        FormationMotionModerator<T> formationMotionModerator = this.f3282e;
        if (formationMotionModerator != null) {
            formationMotionModerator.calculateDriftOffset(this.f3285h, this.f3278a, this.f3280c);
        }
    }

    public Formation(Location<T> location, FormationPattern<T> formationPattern, SlotAssignmentStrategy<T> slotAssignmentStrategy, FormationMotionModerator<T> formationMotionModerator) {
        this.f3284g = new Matrix3();
        if (location != null) {
            this.f3279b = location;
            this.f3280c = formationPattern;
            this.f3281d = slotAssignmentStrategy;
            this.f3282e = formationMotionModerator;
            this.f3278a = new Array<>();
            this.f3285h = location.newLocation();
            this.f3283f = (T) location.getPosition().cpy();
            return;
        }
        throw new IllegalArgumentException("The anchor point cannot be null");
    }

    public void removeMember(FormationMember<T> formationMember) {
        int m24391a = m24391a(formationMember);
        if (m24391a >= 0) {
            this.f3281d.removeSlotAssignment(this.f3278a, m24391a);
            updateSlotAssignments();
        }
    }

    public void updateSlots() {
        Location<T> anchorPoint = getAnchorPoint();
        this.f3283f.set(anchorPoint.getPosition());
        float orientation = anchorPoint.getOrientation();
        if (this.f3282e != null) {
            this.f3283f.sub(this.f3285h.getPosition());
            orientation -= this.f3285h.getOrientation();
        }
        this.f3284g.idt().rotateRad(anchorPoint.getOrientation());
        int i = 0;
        while (true) {
            Array<SlotAssignment<T>> array = this.f3278a;
            if (i >= array.size) {
                break;
            }
            SlotAssignment<T> slotAssignment = array.get(i);
            Location<T> targetLocation = slotAssignment.member.getTargetLocation();
            this.f3280c.calculateSlotLocation(targetLocation, slotAssignment.slotNumber);
            T position = targetLocation.getPosition();
            if (position instanceof Vector2) {
                ((Vector2) position).mul(this.f3284g);
            } else if (position instanceof Vector3) {
                ((Vector3) position).mul(this.f3284g);
            }
            position.add(this.f3283f);
            targetLocation.setOrientation(targetLocation.getOrientation() + orientation);
            i++;
        }
        FormationMotionModerator<T> formationMotionModerator = this.f3282e;
        if (formationMotionModerator != null) {
            formationMotionModerator.updateAnchorPoint(anchorPoint);
        }
    }
}
