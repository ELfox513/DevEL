package com.prineside.tdi2;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.p032ai.pfa.DefaultConnection;
import com.badlogic.gdx.p032ai.pfa.GraphPath;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.utils.IntPair;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.util.Iterator;
import net.bytebuddy.utility.JavaConstant;
@REGS
/* loaded from: classes2.dex */
public class Path implements GraphPath<PathNode>, KryoSerializable {
    public static final int MIDDLE_SIDE_SHIFT = 5;
    public static final MoveSide[][] MOVE_SIDE_BY_DIRECTIONS;
    public static final SideFunction[][] SIDE_FUNCTIONS;
    public static final int SIDE_SHIFTS = 11;
    public static final int[][] SIDE_SHIFT_BY_COUNT;
    public static final SideFunction[][] SIDE_SIMPLE_FUNCTIONS;

    /* renamed from: b */
    public static final Pool<PathSegment> f8795b;

    /* renamed from: d */
    public static final Vector2 f8796d;

    /* renamed from: k */
    public static final Vector2 f8797k;

    /* renamed from: a */
    public boolean f8798a;
    public Array<MoveSide> moveSides;
    public Array<PathNode> nodes;

    /* loaded from: classes2.dex */
    public static class BezierSideFunction implements SideFunction {

        /* renamed from: a */
        public final float f8799a;

        /* renamed from: b */
        public final float f8800b;

        /* renamed from: c */
        public final float f8801c;

        /* renamed from: d */
        public final float f8802d;

        /* renamed from: e */
        public final float f8803e;

        /* renamed from: f */
        public final float f8804f;

        /* renamed from: g */
        public final float f8805g;

        @Override // com.prineside.tdi2.Path.SideFunction
        public float speedMultiplier() {
            return this.f8805g;
        }

        @Override // com.prineside.tdi2.Path.SideFunction
        public void position(float f, Vector2 vector2) {
            float f2 = 1.0f - f;
            vector2.f5527x = (this.f8799a * f2 * f2) + (this.f8800b * 2.0f * f2 * f) + (this.f8801c * f * f);
            vector2.f5528y = (this.f8802d * f2 * f2) + (this.f8803e * 2.0f * f2 * f) + (this.f8804f * f * f);
        }

        @Override // com.prineside.tdi2.Path.SideFunction
        public float rotation(float f) {
            float f2 = f - 1.0f;
            float f3 = (f * 2.0f) - 1.0f;
            return (MathUtils.atan2((((this.f8802d * f2) - (this.f8803e * f3)) + (this.f8804f * f)) * 2.0f, (((this.f8799a * f2) - (this.f8800b * f3)) + (this.f8801c * f)) * 2.0f) * 57.295776f) - 90.0f;
        }

        public BezierSideFunction(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            this.f8799a = f * 128.0f;
            this.f8802d = f2 * 128.0f;
            this.f8800b = f3 * 128.0f;
            this.f8803e = f4 * 128.0f;
            this.f8801c = f5 * 128.0f;
            this.f8804f = f6 * 128.0f;
            this.f8805g = 1.0f / ((((f7 * 128.0f) + 64.0f) / 64.0f) * 1.0f);
        }
    }

    @REGS(serializer = Serializer.class)
    /* loaded from: classes2.dex */
    public static class Connection extends DefaultConnection<PathNode> {
        public float cost;
        public int fromIdx;
        public boolean isTeleport;
        public Map map;
        public int toIdx;

        /* loaded from: classes2.dex */
        public static class Serializer extends com.esotericsoftware.kryo.Serializer<Connection> {
            @Override // com.esotericsoftware.kryo.Serializer
            public Connection copy(Kryo kryo, Connection connection) {
                return new Connection((Map) kryo.getSerializer(Map.class).copy(kryo, connection.map), connection.fromIdx, connection.toIdx, connection.isTeleport, connection.cost);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.esotericsoftware.kryo.Serializer
            public Connection read(Kryo kryo, Input input, Class<? extends Connection> cls) {
                return new Connection((Map) kryo.readObject(input, Map.class), input.readInt(), input.readInt(), input.readBoolean(), input.readFloat());
            }

            @Override // com.esotericsoftware.kryo.Serializer
            public void write(Kryo kryo, Output output, Connection connection) {
                kryo.writeObject(output, connection.map);
                output.writeBoolean(connection.isTeleport);
                output.writeFloat(connection.cost);
                output.writeInt(connection.fromIdx);
                output.writeInt(connection.toIdx);
            }
        }

        public Connection(Map map, int i, int i2, boolean z, float f) {
            super(null, null);
            this.map = map;
            this.fromIdx = i;
            this.toIdx = i2;
            this.isTeleport = z;
            this.cost = f;
        }

        @Override // com.badlogic.gdx.p032ai.pfa.DefaultConnection, com.badlogic.gdx.p032ai.pfa.Connection
        public float getCost() {
            return this.cost;
        }

        @Override // com.badlogic.gdx.p032ai.pfa.DefaultConnection, com.badlogic.gdx.p032ai.pfa.Connection
        public PathNode getFromNode() {
            return this.map.pathfindingNodes.items[this.fromIdx];
        }

        @Override // com.badlogic.gdx.p032ai.pfa.DefaultConnection, com.badlogic.gdx.p032ai.pfa.Connection
        public PathNode getToNode() {
            return this.map.pathfindingNodes.items[this.toIdx];
        }
    }

    /* loaded from: classes2.dex */
    public static class LinearSideFunction implements SideFunction {

        /* renamed from: a */
        public final float f8806a;

        /* renamed from: b */
        public final float f8807b;

        /* renamed from: c */
        public final float f8808c;

        /* renamed from: d */
        public final float f8809d;

        /* renamed from: e */
        public final float f8810e;

        /* renamed from: f */
        public final float f8811f;

        @Override // com.prineside.tdi2.Path.SideFunction
        public float rotation(float f) {
            return this.f8811f;
        }

        @Override // com.prineside.tdi2.Path.SideFunction
        public float speedMultiplier() {
            return this.f8810e;
        }

        @Override // com.prineside.tdi2.Path.SideFunction
        public void position(float f, Vector2 vector2) {
            float f2 = this.f8806a;
            vector2.f5527x = f2 + ((this.f8807b - f2) * f);
            float f3 = this.f8808c;
            vector2.f5528y = f3 + ((this.f8809d - f3) * f);
        }

        public LinearSideFunction(float f, float f2, float f3, float f4) {
            this.f8806a = f * 128.0f;
            this.f8808c = f2 * 128.0f;
            this.f8807b = f3 * 128.0f;
            this.f8809d = 128.0f * f4;
            this.f8811f = PMath.getAngleBetweenPoints(f, f2, f3, f4);
            this.f8810e = 1.0f / PMath.getDistanceBetweenPoints(f, f2, f3, f4);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum MoveDirection {
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        CENTER;
        
        public static final MoveDirection[] values = values();
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum MoveSide {
        LEFT_TOP,
        LEFT_RIGHT,
        LEFT_BOTTOM,
        LEFT_CENTER,
        TOP_LEFT,
        TOP_RIGHT,
        TOP_BOTTOM,
        TOP_CENTER,
        RIGHT_LEFT,
        RIGHT_TOP,
        RIGHT_BOTTOM,
        RIGHT_CENTER,
        BOTTOM_LEFT,
        BOTTOM_TOP,
        BOTTOM_RIGHT,
        BOTTOM_CENTER,
        CENTER_LEFT,
        CENTER_TOP,
        CENTER_RIGHT,
        CENTER_BOTTOM;
        

        /* renamed from: a */
        public static boolean[][] f8813a = (boolean[][]) java.lang.reflect.Array.newInstance(Boolean.TYPE, values().length, values().length);

        /* renamed from: b */
        public static IntPair[] f8814b = new IntPair[values().length];

        /* renamed from: d */
        public static boolean[] f8815d = new boolean[values().length];
        public static MoveSide[] reverse;
        public static final MoveSide[] values;

        public static boolean areConnected(MoveSide moveSide, MoveSide moveSide2) {
            return f8813a[moveSide.ordinal()][moveSide2.ordinal()];
        }

        public static IntPair getNextNodeShift(MoveSide moveSide) {
            return f8814b[moveSide.ordinal()];
        }

        public static boolean isStraightLine(MoveSide moveSide) {
            return f8815d[moveSide.ordinal()];
        }

        static {
            MoveSide[] values2;
            MoveSide[] values3;
            boolean z;
            for (MoveSide moveSide : values()) {
                for (MoveSide moveSide2 : values()) {
                    boolean[] zArr = f8813a[moveSide.ordinal()];
                    int ordinal = moveSide2.ordinal();
                    if ((moveSide.name().endsWith("TOP") && moveSide2.name().startsWith("BOTTOM")) || ((moveSide.name().endsWith("BOTTOM") && moveSide2.name().startsWith("TOP")) || ((moveSide.name().endsWith("LEFT") && moveSide2.name().startsWith("RIGHT")) || (moveSide.name().endsWith("RIGHT") && moveSide2.name().startsWith("LEFT"))))) {
                        z = true;
                    } else {
                        z = false;
                    }
                    zArr[ordinal] = z;
                }
                if (moveSide.name().endsWith("TOP")) {
                    f8814b[moveSide.ordinal()] = new IntPair(0, 1);
                } else if (moveSide.name().endsWith("RIGHT")) {
                    f8814b[moveSide.ordinal()] = new IntPair(1, 0);
                } else if (moveSide.name().endsWith("LEFT")) {
                    f8814b[moveSide.ordinal()] = new IntPair(-1, 0);
                } else if (moveSide.name().endsWith("BOTTOM")) {
                    f8814b[moveSide.ordinal()] = new IntPair(0, -1);
                }
            }
            boolean[] zArr2 = f8815d;
            MoveSide moveSide3 = LEFT_RIGHT;
            zArr2[moveSide3.ordinal()] = true;
            boolean[] zArr3 = f8815d;
            MoveSide moveSide4 = RIGHT_LEFT;
            zArr3[moveSide4.ordinal()] = true;
            boolean[] zArr4 = f8815d;
            MoveSide moveSide5 = TOP_BOTTOM;
            zArr4[moveSide5.ordinal()] = true;
            boolean[] zArr5 = f8815d;
            MoveSide moveSide6 = BOTTOM_TOP;
            zArr5[moveSide6.ordinal()] = true;
            reverse = new MoveSide[]{TOP_LEFT, moveSide4, BOTTOM_LEFT, CENTER_LEFT, LEFT_TOP, RIGHT_TOP, moveSide6, CENTER_TOP, moveSide3, TOP_RIGHT, BOTTOM_RIGHT, CENTER_RIGHT, LEFT_BOTTOM, moveSide5, RIGHT_BOTTOM, CENTER_BOTTOM, LEFT_CENTER, TOP_CENTER, RIGHT_CENTER, BOTTOM_CENTER};
            values = values();
        }
    }

    /* loaded from: classes2.dex */
    public static class PathSegment {
        public Direction direction;
        public float distanceFromStart;
        public float length;

        /* renamed from: x1 */
        public float f8817x1;

        /* renamed from: x2 */
        public float f8818x2;

        /* renamed from: y1 */
        public float f8819y1;

        /* renamed from: y2 */
        public float f8820y2;

        /* loaded from: classes2.dex */
        public enum Direction {
            TOP,
            LEFT,
            RIGHT,
            BOTTOM
        }

        public void free() {
            Path.f8795b.free(this);
        }
    }

    /* loaded from: classes2.dex */
    public static class SharpCornerSideFunction implements SideFunction {

        /* renamed from: a */
        public final float f8822a;

        /* renamed from: b */
        public final float f8823b;

        /* renamed from: c */
        public final float f8824c;

        /* renamed from: d */
        public final float f8825d;

        /* renamed from: e */
        public final float f8826e;

        /* renamed from: f */
        public final float f8827f;

        /* renamed from: g */
        public final float f8828g;

        /* renamed from: h */
        public final float f8829h;

        @Override // com.prineside.tdi2.Path.SideFunction
        public float rotation(float f) {
            return f < 0.5f ? this.f8828g : this.f8829h;
        }

        @Override // com.prineside.tdi2.Path.SideFunction
        public float speedMultiplier() {
            return 0.70710677f;
        }

        @Override // com.prineside.tdi2.Path.SideFunction
        public void position(float f, Vector2 vector2) {
            if (f < 0.5f) {
                float f2 = f * 2.0f;
                float f3 = this.f8822a;
                float f4 = f3 + ((this.f8823b - f3) * f2);
                float f5 = this.f8825d;
                vector2.set(f4, f5 + ((this.f8826e - f5) * f2));
                return;
            }
            float f6 = (f - 0.5f) * 2.0f;
            float f7 = this.f8823b;
            float f8 = f7 + ((this.f8824c - f7) * f6);
            float f9 = this.f8826e;
            vector2.set(f8, f9 + ((this.f8827f - f9) * f6));
        }

        public SharpCornerSideFunction(float f, float f2, float f3, float f4, float f5, float f6) {
            this.f8822a = f * 128.0f;
            this.f8825d = f2 * 128.0f;
            this.f8823b = f3 * 128.0f;
            this.f8826e = f4 * 128.0f;
            this.f8824c = f5 * 128.0f;
            this.f8827f = 128.0f * f6;
            this.f8828g = PMath.getAngleBetweenPoints(f3, f4, f, f2);
            this.f8829h = PMath.getAngleBetweenPoints(f5, f6, f3, f4);
        }
    }

    /* loaded from: classes2.dex */
    public interface SideFunction {
        void position(float f, Vector2 vector2);

        float rotation(float f);

        float speedMultiplier();
    }

    public Path() {
        this.nodes = new Array<>(PathNode.class);
        this.moveSides = new Array<>(MoveSide.class);
    }

    public static MoveSide calculateMoveSides(PathNode pathNode, PathNode pathNode2, PathNode pathNode3) {
        MoveDirection moveDirection;
        MoveDirection moveDirection2 = null;
        if (pathNode2 != null) {
            int i = pathNode2.f8831y;
            int i2 = pathNode.f8831y;
            if (i == i2 && pathNode2.f8830x + 1 == pathNode.f8830x) {
                moveDirection = MoveDirection.LEFT;
            } else if (i == i2 && pathNode2.f8830x - 1 == pathNode.f8830x) {
                moveDirection = MoveDirection.RIGHT;
            } else {
                int i3 = pathNode2.f8830x;
                int i4 = pathNode.f8830x;
                if (i3 == i4 && i + 1 == i2) {
                    moveDirection = MoveDirection.BOTTOM;
                } else {
                    moveDirection = (i3 == i4 && i + (-1) == i2) ? MoveDirection.TOP : null;
                }
            }
        } else {
            moveDirection = MoveDirection.CENTER;
        }
        if (pathNode3 != null) {
            int i5 = pathNode3.f8831y;
            int i6 = pathNode.f8831y;
            if (i5 == i6 && pathNode3.f8830x + 1 == pathNode.f8830x) {
                moveDirection2 = MoveDirection.LEFT;
            } else if (i5 == i6 && pathNode3.f8830x - 1 == pathNode.f8830x) {
                moveDirection2 = MoveDirection.RIGHT;
            } else {
                int i7 = pathNode3.f8830x;
                int i8 = pathNode.f8830x;
                if (i7 == i8 && i5 + 1 == i6) {
                    moveDirection2 = MoveDirection.BOTTOM;
                } else if (i7 == i8 && i5 - 1 == i6) {
                    moveDirection2 = MoveDirection.TOP;
                }
            }
        } else {
            moveDirection2 = MoveDirection.CENTER;
        }
        if (moveDirection == null) {
            int i9 = 0;
            while (true) {
                int[] iArr = pathNode2.teleportIndices;
                if (i9 >= iArr.length) {
                    break;
                }
                if (iArr[i9] != -1) {
                    int i10 = 0;
                    while (true) {
                        int[] iArr2 = pathNode.teleportIndices;
                        if (i10 >= iArr2.length) {
                            break;
                        } else if (iArr2[i10] == pathNode2.teleportIndices[i9]) {
                            moveDirection = MoveDirection.values[i10];
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
                i9++;
            }
        }
        if (moveDirection2 == null) {
            int i11 = 0;
            while (true) {
                int[] iArr3 = pathNode3.teleportIndices;
                if (i11 >= iArr3.length) {
                    break;
                }
                if (iArr3[i11] != -1) {
                    int i12 = 0;
                    while (true) {
                        int[] iArr4 = pathNode.teleportIndices;
                        if (i12 >= iArr4.length) {
                            break;
                        } else if (iArr4[i12] == pathNode3.teleportIndices[i11]) {
                            moveDirection2 = MoveDirection.values[i12];
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
                i11++;
            }
        }
        if (moveDirection != null && moveDirection2 != null) {
            if (moveDirection == moveDirection2) {
                moveDirection = MoveDirection.CENTER;
            }
            return MOVE_SIDE_BY_DIRECTIONS[moveDirection.ordinal()][moveDirection2.ordinal()];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't find move direction - ");
        sb.append(moveDirection == null ? "no from, " : "");
        sb.append(" ");
        sb.append(moveDirection2 == null ? "no to, " : "");
        sb.append(" (prev: ");
        sb.append(String.valueOf(pathNode2));
        sb.append(") (curr: ");
        sb.append(String.valueOf(pathNode));
        sb.append(") (next: ");
        sb.append(String.valueOf(pathNode3));
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    public MoveSide getMoveSide(int i) {
        prepareIfNeeded();
        if (this.f8798a) {
            return this.moveSides.items[i];
        }
        throw new IllegalStateException("Path is not prepared");
    }

    public int getNodeCount() {
        return this.nodes.size;
    }

    public boolean isPrepared() {
        return this.f8798a;
    }

    @Override // java.lang.Iterable
    public Iterator<PathNode> iterator() {
        return this.nodes.iterator();
    }

    public void reset() {
        this.f8798a = false;
    }

    static {
        float f;
        MoveDirection[] moveDirectionArr;
        int[][] iArr = new int[12];
        SIDE_SHIFT_BY_COUNT = iArr;
        int[] iArr2 = new int[1];
        iArr2[0] = 5;
        iArr[1] = iArr2;
        iArr[2] = new int[]{3, 7};
        iArr[3] = new int[]{2, 5, 8};
        iArr[4] = new int[]{2, 4, 6, 8};
        iArr[5] = new int[]{1, 3, 5, 7, 9};
        iArr[6] = new int[]{0, 2, 4, 6, 8, 10};
        iArr[7] = new int[]{0, 2, 4, 5, 6, 8, 10};
        iArr[8] = new int[]{0, 2, 3, 4, 6, 7, 8, 10};
        iArr[9] = new int[]{0, 1, 2, 4, 5, 6, 8, 9, 10};
        iArr[10] = new int[]{0, 1, 2, 3, 4, 6, 7, 8, 9, 10};
        iArr[11] = new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        MoveDirection[] moveDirectionArr2 = MoveDirection.values;
        MOVE_SIDE_BY_DIRECTIONS = (MoveSide[][]) java.lang.reflect.Array.newInstance(MoveSide.class, moveDirectionArr2.length, moveDirectionArr2.length);
        for (MoveDirection moveDirection : moveDirectionArr2) {
            for (MoveDirection moveDirection2 : MoveDirection.values) {
                if (moveDirection != moveDirection2) {
                    MOVE_SIDE_BY_DIRECTIONS[moveDirection.ordinal()][moveDirection2.ordinal()] = MoveSide.valueOf(moveDirection.name() + JavaConstant.Dynamic.DEFAULT_NAME + moveDirection2.name());
                }
            }
        }
        SIDE_FUNCTIONS = (SideFunction[][]) java.lang.reflect.Array.newInstance(SideFunction.class, MoveSide.values.length, 11);
        int i = 0;
        while (true) {
            f = 0.0625f;
            if (i >= 11) {
                break;
            }
            float f2 = 0.0625f * (i - 5);
            SideFunction[][] sideFunctionArr = SIDE_FUNCTIONS;
            float f3 = -f2;
            sideFunctionArr[MoveSide.LEFT_TOP.ordinal()][i] = new BezierSideFunction(-0.5f, f3, f2, f3, f2, 0.5f, f2);
            sideFunctionArr[MoveSide.LEFT_RIGHT.ordinal()][i] = new LinearSideFunction(-0.5f, f3, 0.5f, f3);
            sideFunctionArr[MoveSide.LEFT_BOTTOM.ordinal()][i] = new BezierSideFunction(-0.5f, f3, f3, f3, f3, -0.5f, f3);
            sideFunctionArr[MoveSide.LEFT_CENTER.ordinal()][i] = new BezierSideFunction(-0.5f, f3, 0.0f, f3, 0.0f, 0.0f, 0.0f);
            sideFunctionArr[MoveSide.TOP_LEFT.ordinal()][i] = new BezierSideFunction(f3, 0.5f, f3, f2, -0.5f, f2, f3);
            sideFunctionArr[MoveSide.TOP_RIGHT.ordinal()][i] = new BezierSideFunction(f3, 0.5f, f3, f3, 0.5f, f3, f2);
            sideFunctionArr[MoveSide.TOP_BOTTOM.ordinal()][i] = new LinearSideFunction(f3, 0.5f, f3, -0.5f);
            sideFunctionArr[MoveSide.TOP_CENTER.ordinal()][i] = new BezierSideFunction(f3, 0.5f, f3, 0.0f, 0.0f, 0.0f, 0.0f);
            sideFunctionArr[MoveSide.RIGHT_LEFT.ordinal()][i] = new LinearSideFunction(0.5f, f2, -0.5f, f2);
            sideFunctionArr[MoveSide.RIGHT_TOP.ordinal()][i] = new BezierSideFunction(0.5f, f2, f2, f2, f2, 0.5f, f3);
            sideFunctionArr[MoveSide.RIGHT_BOTTOM.ordinal()][i] = new BezierSideFunction(0.5f, f2, f3, f2, f3, -0.5f, f2);
            sideFunctionArr[MoveSide.RIGHT_CENTER.ordinal()][i] = new BezierSideFunction(0.5f, f2, 0.0f, f2, 0.0f, 0.0f, 0.0f);
            sideFunctionArr[MoveSide.BOTTOM_LEFT.ordinal()][i] = new BezierSideFunction(f2, -0.5f, f2, f2, -0.5f, f2, f2);
            sideFunctionArr[MoveSide.BOTTOM_TOP.ordinal()][i] = new LinearSideFunction(f2, -0.5f, f2, 0.5f);
            sideFunctionArr[MoveSide.BOTTOM_RIGHT.ordinal()][i] = new BezierSideFunction(f2, -0.5f, f2, f3, 0.5f, f3, f3);
            sideFunctionArr[MoveSide.BOTTOM_CENTER.ordinal()][i] = new BezierSideFunction(f2, -0.5f, f2, 0.0f, 0.0f, 0.0f, 0.0f);
            sideFunctionArr[MoveSide.CENTER_LEFT.ordinal()][i] = new BezierSideFunction(0.0f, 0.0f, 0.0f, f2, -0.5f, f2, 0.0f);
            sideFunctionArr[MoveSide.CENTER_TOP.ordinal()][i] = new BezierSideFunction(0.0f, 0.0f, f2, 0.0f, f2, 0.5f, 0.0f);
            sideFunctionArr[MoveSide.CENTER_RIGHT.ordinal()][i] = new BezierSideFunction(0.0f, 0.0f, 0.0f, f3, 0.5f, f3, 0.0f);
            sideFunctionArr[MoveSide.CENTER_BOTTOM.ordinal()][i] = new BezierSideFunction(0.0f, 0.0f, f3, 0.0f, f3, -0.5f, 0.0f);
            i++;
        }
        int i2 = 0;
        SIDE_SIMPLE_FUNCTIONS = (SideFunction[][]) java.lang.reflect.Array.newInstance(SideFunction.class, MoveSide.values.length, 11);
        while (i2 < 11) {
            float f4 = (i2 - 5) * f;
            SideFunction[][] sideFunctionArr2 = SIDE_SIMPLE_FUNCTIONS;
            float f5 = -f4;
            sideFunctionArr2[MoveSide.LEFT_TOP.ordinal()][i2] = new SharpCornerSideFunction(-0.5f, f5, f4, f5, f4, 0.5f);
            sideFunctionArr2[MoveSide.LEFT_RIGHT.ordinal()][i2] = new LinearSideFunction(-0.5f, f5, 0.5f, f5);
            sideFunctionArr2[MoveSide.LEFT_BOTTOM.ordinal()][i2] = new SharpCornerSideFunction(-0.5f, f5, f5, f5, f5, -0.5f);
            sideFunctionArr2[MoveSide.LEFT_CENTER.ordinal()][i2] = new LinearSideFunction(-0.5f, f5, 0.0f, 0.0f);
            sideFunctionArr2[MoveSide.TOP_LEFT.ordinal()][i2] = new SharpCornerSideFunction(f5, 0.5f, f5, f4, -0.5f, f4);
            sideFunctionArr2[MoveSide.TOP_RIGHT.ordinal()][i2] = new SharpCornerSideFunction(f5, 0.5f, f5, f5, 0.5f, f5);
            sideFunctionArr2[MoveSide.TOP_BOTTOM.ordinal()][i2] = new LinearSideFunction(f5, 0.5f, f5, -0.5f);
            sideFunctionArr2[MoveSide.TOP_CENTER.ordinal()][i2] = new LinearSideFunction(f5, 0.5f, 0.0f, 0.0f);
            sideFunctionArr2[MoveSide.RIGHT_LEFT.ordinal()][i2] = new LinearSideFunction(0.5f, f4, -0.5f, f4);
            sideFunctionArr2[MoveSide.RIGHT_TOP.ordinal()][i2] = new SharpCornerSideFunction(0.5f, f4, f4, f4, f4, 0.5f);
            sideFunctionArr2[MoveSide.RIGHT_BOTTOM.ordinal()][i2] = new SharpCornerSideFunction(0.5f, f4, f5, f4, f5, -0.5f);
            sideFunctionArr2[MoveSide.RIGHT_CENTER.ordinal()][i2] = new LinearSideFunction(0.5f, f4, 0.0f, 0.0f);
            sideFunctionArr2[MoveSide.BOTTOM_LEFT.ordinal()][i2] = new SharpCornerSideFunction(f4, -0.5f, f4, f4, -0.5f, f4);
            sideFunctionArr2[MoveSide.BOTTOM_TOP.ordinal()][i2] = new LinearSideFunction(f4, -0.5f, f4, 0.5f);
            sideFunctionArr2[MoveSide.BOTTOM_RIGHT.ordinal()][i2] = new SharpCornerSideFunction(f4, -0.5f, f4, f5, 0.5f, f5);
            sideFunctionArr2[MoveSide.BOTTOM_CENTER.ordinal()][i2] = new LinearSideFunction(f4, -0.5f, 0.0f, 0.0f);
            sideFunctionArr2[MoveSide.CENTER_LEFT.ordinal()][i2] = new LinearSideFunction(0.0f, 0.0f, -0.5f, f4);
            sideFunctionArr2[MoveSide.CENTER_TOP.ordinal()][i2] = new LinearSideFunction(0.0f, 0.0f, f4, 0.5f);
            sideFunctionArr2[MoveSide.CENTER_RIGHT.ordinal()][i2] = new LinearSideFunction(0.0f, 0.0f, 0.5f, f5);
            sideFunctionArr2[MoveSide.CENTER_BOTTOM.ordinal()][i2] = new LinearSideFunction(0.0f, 0.0f, f5, -0.5f);
            i2++;
            f = 0.0625f;
        }
        f8795b = new Pool<PathSegment>(16, Integer.MAX_VALUE) { // from class: com.prineside.tdi2.Path.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public PathSegment newObject() {
                return new PathSegment();
            }
        };
        f8796d = new Vector2();
        f8797k = new Vector2();
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public void add(PathNode pathNode) {
        this.nodes.add(pathNode);
        this.f8798a = false;
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public void clear() {
        this.nodes.clear();
        this.moveSides.clear();
        this.f8798a = false;
    }

    public String describe() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Prepared: ").append(this.f8798a).append(", ").append("nodes: ").append(this.nodes.size).append("\n");
        for (int i = 0; i < this.nodes.size; i++) {
            if (i != 0) {
                stringBuilder.append(" > ");
            }
            stringBuilder.append(this.nodes.items[i].f8830x).append(":").append(this.nodes.items[i].f8831y).append(" (").append(this.moveSides.items[i]).append(")");
        }
        return stringBuilder.toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public PathNode get(int i) {
        prepareIfNeeded();
        return this.nodes.items[i];
    }

    public Vector2 getPosition(float f, int i) {
        prepareIfNeeded();
        Array<PathNode> array = this.nodes;
        int i2 = array.size;
        if (i2 != 0) {
            int i3 = i2 - 1;
            float f2 = 0.99f;
            if (f < i2 - 0.5f) {
                f += 0.5f;
                i3 = (int) f;
                f2 = f - i3;
            }
            try {
                PathNode pathNode = array.items[i3];
                MoveSide moveSide = this.moveSides.items[i3];
                if (moveSide != null) {
                    SideFunction sideFunction = SIDE_FUNCTIONS[moveSide.ordinal()][i];
                    Vector2 vector2 = f8797k;
                    sideFunction.position(f2, vector2);
                    int i4 = (pathNode.f8830x * 128) + 64;
                    int i5 = (pathNode.f8831y * 128) + 64;
                    float f3 = vector2.f5527x + i4;
                    vector2.f5527x = f3;
                    float f4 = vector2.f5528y + i5;
                    vector2.f5528y = f4;
                    int i6 = (i4 + 64) - 1;
                    if (((int) f3) > i6) {
                        vector2.f5527x = i6;
                    }
                    int i7 = (i5 + 64) - 1;
                    if (((int) f4) > i7) {
                        vector2.f5528y = i7;
                    }
                    return vector2;
                }
                throw new IllegalStateException("can't get moveSide, currentNodeIdx = " + i3 + ", passedTiles = " + f + ", nodes.size = " + this.nodes.size);
            } catch (Exception e) {
                throw new IllegalStateException("can't get current node, currentNodeIdx = " + i3 + ", passedTiles = " + f + ", nodes.size = " + this.nodes.size, e);
            }
        }
        throw new IllegalStateException("No nodes in path");
    }

    public float getPositionSimpleSegmentsForGraphics(int i, Array<PathSegment> array) {
        if (this.f8798a) {
            if (this.nodes.size != 0) {
                array.clear();
                int i2 = 0;
                int lengthInTiles = getLengthInTiles();
                float f = 0.0f;
                float f2 = 0.0f;
                while (i2 <= lengthInTiles) {
                    MoveSide moveSide = getMoveSide(i2);
                    PathNode pathNode = this.nodes.items[i2];
                    if (MoveSide.isStraightLine(moveSide)) {
                        PathSegment obtain = f8795b.obtain();
                        SideFunction[][] sideFunctionArr = SIDE_SIMPLE_FUNCTIONS;
                        SideFunction sideFunction = sideFunctionArr[moveSide.ordinal()][i];
                        Vector2 vector2 = f8796d;
                        sideFunction.position(f, vector2);
                        obtain.f8817x1 = vector2.f5527x + (pathNode.f8830x * 128) + 64.0f;
                        obtain.f8819y1 = vector2.f5528y + (pathNode.f8831y * 128) + 64.0f;
                        sideFunctionArr[moveSide.ordinal()][i].position(1.0f, vector2);
                        float f3 = vector2.f5527x + (pathNode.f8830x * 128) + 64.0f;
                        obtain.f8818x2 = f3;
                        float f4 = vector2.f5528y + (pathNode.f8831y * 128) + 64.0f;
                        obtain.f8820y2 = f4;
                        obtain.length = PMath.getDistanceBetweenPoints(obtain.f8817x1, obtain.f8819y1, f3, f4);
                        obtain.distanceFromStart = f2;
                        obtain.direction = m21913e(obtain.f8817x1, obtain.f8819y1, obtain.f8818x2, obtain.f8820y2);
                        array.add(obtain);
                        f2 += obtain.length;
                    } else {
                        Pool<PathSegment> pool = f8795b;
                        PathSegment obtain2 = pool.obtain();
                        SideFunction[][] sideFunctionArr2 = SIDE_SIMPLE_FUNCTIONS;
                        SideFunction sideFunction2 = sideFunctionArr2[moveSide.ordinal()][i];
                        Vector2 vector22 = f8796d;
                        sideFunction2.position(f, vector22);
                        obtain2.f8817x1 = vector22.f5527x + (pathNode.f8830x * 128) + 64.0f;
                        obtain2.f8819y1 = vector22.f5528y + (pathNode.f8831y * 128) + 64.0f;
                        sideFunctionArr2[moveSide.ordinal()][i].position(0.5f, vector22);
                        float f5 = vector22.f5527x + (pathNode.f8830x * 128) + 64.0f;
                        obtain2.f8818x2 = f5;
                        float f6 = vector22.f5528y + (pathNode.f8831y * 128) + 64.0f;
                        obtain2.f8820y2 = f6;
                        obtain2.length = PMath.getDistanceBetweenPoints(obtain2.f8817x1, obtain2.f8819y1, f5, f6);
                        obtain2.distanceFromStart = f2;
                        obtain2.direction = m21913e(obtain2.f8817x1, obtain2.f8819y1, obtain2.f8818x2, obtain2.f8820y2);
                        array.add(obtain2);
                        float f7 = f2 + obtain2.length;
                        PathSegment obtain3 = pool.obtain();
                        obtain3.f8817x1 = obtain2.f8818x2;
                        obtain3.f8819y1 = obtain2.f8820y2;
                        sideFunctionArr2[moveSide.ordinal()][i].position(1.0f, vector22);
                        float f8 = vector22.f5527x + (pathNode.f8830x * 128) + 64.0f;
                        obtain3.f8818x2 = f8;
                        float f9 = vector22.f5528y + (pathNode.f8831y * 128) + 64.0f;
                        obtain3.f8820y2 = f9;
                        obtain3.length = PMath.getDistanceBetweenPoints(obtain3.f8817x1, obtain3.f8819y1, f8, f9);
                        obtain3.distanceFromStart = f7;
                        obtain3.direction = m21913e(obtain3.f8817x1, obtain3.f8819y1, obtain3.f8818x2, obtain3.f8820y2);
                        array.add(obtain3);
                        f2 = f7 + obtain3.length;
                    }
                    i2++;
                    f = 0.0f;
                }
                return f2;
            }
            throw new IllegalStateException("No nodes in path");
        }
        throw new IllegalStateException("Path is not prepared yet");
    }

    public void prepareIfNeeded() {
        if (this.f8798a) {
            return;
        }
        int i = this.nodes.size;
        if (i >= 2) {
            Array<MoveSide> array = this.moveSides;
            if (i > array.size) {
                array.setSize(i);
            }
            for (int i2 = 0; i2 < this.nodes.size; i2++) {
                MoveSide calculateMoveSides = calculateMoveSides(i2);
                if (calculateMoveSides != null) {
                    this.moveSides.set(i2, calculateMoveSides);
                } else {
                    throw new IllegalStateException("Move side not calculated for " + i2 + "\n" + describe());
                }
            }
            this.f8798a = true;
            return;
        }
        throw new IllegalStateException("Path must contain at least 2 nodes (" + this.nodes.size + ")");
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public void reverse() {
        this.nodes.reverse();
        this.f8798a = false;
    }

    public void set(Path path) {
        this.nodes.clear();
        this.moveSides.clear();
        this.nodes.addAll(path.nodes);
        this.moveSides.addAll(path.moveSides);
        this.f8798a = path.f8798a;
    }

    public void setMoveSide(int i, MoveSide moveSide) {
        if (this.f8798a) {
            if (moveSide != null) {
                this.moveSides.set(i, moveSide);
                return;
            }
            throw new IllegalArgumentException("side is null");
        }
        throw new IllegalStateException("Path is not prepared");
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeBoolean(this.f8798a);
        kryo.writeObject(output, this.nodes);
        kryo.writeObject(output, this.moveSides);
    }

    /* renamed from: e */
    public static PathSegment.Direction m21913e(float f, float f2, float f3, float f4) {
        float normalizeAngle = PMath.normalizeAngle(PMath.getAngleBetweenPoints(f, f2, f3, f4));
        if (normalizeAngle >= 45.0f && normalizeAngle <= 315.0f) {
            if (normalizeAngle >= 45.0f && normalizeAngle < 135.0f) {
                return PathSegment.Direction.LEFT;
            }
            if (normalizeAngle >= 135.0f && normalizeAngle < 225.0f) {
                return PathSegment.Direction.BOTTOM;
            }
            return PathSegment.Direction.RIGHT;
        }
        return PathSegment.Direction.TOP;
    }

    public void debugDump() {
        String str;
        if (getCount() == 0) {
            Logger.log("Path", "path his empty");
        }
        for (int i = 0; i < getCount(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            sb.append(": ");
            sb.append(this.nodes.get(i).toString());
            sb.append(" ");
            if (this.f8798a) {
                str = String.valueOf(this.moveSides.get(i));
            } else {
                str = "NP";
            }
            sb.append(str);
            Logger.log("Path", sb.toString());
        }
    }

    @Override // com.badlogic.gdx.p032ai.pfa.GraphPath
    public int getCount() {
        prepareIfNeeded();
        return this.nodes.size;
    }

    public int getLengthInTiles() {
        prepareIfNeeded();
        return this.nodes.size - 1;
    }

    public float getRotation(float f, int i) {
        float f2;
        prepareIfNeeded();
        int i2 = this.nodes.size;
        int i3 = i2 - 1;
        if (f < i2 - 1.0f) {
            float f3 = f + 0.5f;
            i3 = (int) f3;
            f2 = f3 - i3;
        } else {
            f2 = 0.99f;
        }
        return SIDE_FUNCTIONS[this.moveSides.items[i3].ordinal()][i].rotation(f2);
    }

    public float getSpeedMultiplier(float f, int i) {
        prepareIfNeeded();
        int i2 = this.nodes.size;
        int i3 = i2 - 1;
        if (f < i2 - 1.0f) {
            i3 = (int) (0.5f + f);
        }
        if (i3 >= 0) {
            return SIDE_FUNCTIONS[this.moveSides.items[i3].ordinal()][i].speedMultiplier();
        }
        throw new IllegalStateException("currentNodeIdx = " + i3 + ", passedTiles: " + f);
    }

    public boolean passesThroughTileType(TileType tileType) {
        prepareIfNeeded();
        int lengthInTiles = getLengthInTiles();
        for (int i = 0; i <= lengthInTiles; i++) {
            if (this.nodes.items[i].tileType == tileType) {
                return true;
            }
        }
        return false;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8798a = input.readBoolean();
        this.nodes = (Array) kryo.readObject(input, Array.class);
        this.moveSides = (Array) kryo.readObject(input, Array.class);
    }

    public Path(Path path) {
        this();
        this.nodes.addAll(path.nodes);
        this.moveSides.addAll(path.moveSides);
        this.f8798a = path.f8798a;
    }

    public PathNode get(float f) {
        prepareIfNeeded();
        return this.nodes.items[(int) (f + 0.5f)];
    }

    public MoveSide getMoveSide(float f) {
        prepareIfNeeded();
        return getMoveSide((int) (f + 0.5f));
    }

    public MoveSide calculateMoveSides(int i) {
        Array<PathNode> array = this.nodes;
        PathNode[] pathNodeArr = array.items;
        return calculateMoveSides(pathNodeArr[i], i > 0 ? pathNodeArr[i - 1] : null, i < array.size + (-1) ? pathNodeArr[i + 1] : null);
    }
}
