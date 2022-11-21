package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.PaddedImageButton;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.components.MapShiftButtons */
/* loaded from: classes2.dex */
public class MapShiftButtons implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f13359a;

    /* renamed from: b */
    public final DelayedRemovalArray<MapShiftButtonsListener> f13360b;

    /* renamed from: d */
    public WidgetGroup f13361d;

    /* renamed from: k */
    public ObjectMap<Direction, Group> f13362k;

    /* renamed from: p */
    public ObjectMap<Direction, PaddedImageButton> f13363p;

    /* renamed from: q */
    public ObjectMap<Direction, PaddedImageButton> f13364q;

    /* renamed from: r */
    public ObjectMap<Direction, PaddedImageButton> f13365r;

    /* renamed from: s */
    public boolean f13366s;

    /* renamed from: t */
    public CameraController f13367t;

    /* renamed from: u */
    public final _CameraControllerListener f13368u;

    /* renamed from: com.prineside.tdi2.ui.components.MapShiftButtons$4 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C25714 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13375a;

        static {
            int[] iArr = new int[Direction.values().length];
            f13375a = iArr;
            try {
                iArr[Direction.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13375a[Direction.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13375a[Direction.UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13375a[Direction.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.prineside.tdi2.ui.components.MapShiftButtons$Direction */
    /* loaded from: classes2.dex */
    public enum Direction {
        UP,
        DOWN,
        LEFT,
        RIGHT;
        
        public static final Direction[] values = values();
    }

    /* renamed from: com.prineside.tdi2.ui.components.MapShiftButtons$MapShiftButtonsListener */
    /* loaded from: classes2.dex */
    public interface MapShiftButtonsListener {
        void expanded(Direction direction);

        void reduced(Direction direction);

        void shifted(Direction direction);
    }

    /* renamed from: com.prineside.tdi2.ui.components.MapShiftButtons$_CameraControllerListener */
    /* loaded from: classes2.dex */
    public class _CameraControllerListener implements CameraController.CameraControllerListener {
        public _CameraControllerListener() {
        }

        @Override // com.prineside.tdi2.CameraController.CameraControllerListener
        public void onViewportUpdated(CameraController cameraController) {
            MapShiftButtons.this.update();
        }
    }

    public MapShiftButtons(CameraController cameraController) {
        Direction[] directionArr;
        float f;
        Direction[] directionArr2;
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 95, "MapShiftButtons", true);
        this.f13359a = addLayer;
        this.f13360b = new DelayedRemovalArray<>();
        this.f13362k = new ObjectMap<>();
        this.f13363p = new ObjectMap<>();
        this.f13364q = new ObjectMap<>();
        this.f13365r = new ObjectMap<>();
        _CameraControllerListener _cameracontrollerlistener = new _CameraControllerListener();
        this.f13368u = _cameracontrollerlistener;
        this.f13367t = cameraController;
        cameraController.addListener(_cameracontrollerlistener);
        WidgetGroup widgetGroup = new WidgetGroup();
        this.f13361d = widgetGroup;
        widgetGroup.setTransform(false);
        addLayer.getTable().add((Table) this.f13361d).expand().fill();
        for (Direction direction : Direction.values) {
            Group group = new Group();
            group.setTransform(false);
            this.f13362k.put(direction, group);
            group.setSize(1.0f, 1.0f);
            this.f13361d.addActor(group);
        }
        ObjectMap objectMap = new ObjectMap();
        objectMap.put(Direction.LEFT, "icon-triangle-left-hollow");
        objectMap.put(Direction.RIGHT, "icon-triangle-right-hollow");
        objectMap.put(Direction.DOWN, "icon-triangle-bottom-hollow");
        objectMap.put(Direction.UP, "icon-triangle-top-hollow");
        Direction[] directionArr3 = Direction.values;
        int length = directionArr3.length;
        int i = 0;
        while (true) {
            f = 96.0f;
            if (i >= length) {
                break;
            }
            final Direction direction2 = directionArr3[i];
            PaddedImageButton iconSize = new PaddedImageButton(Game.f8589i.assetManager.getDrawable((String) objectMap.get(direction2)), new Runnable() { // from class: com.prineside.tdi2.ui.components.MapShiftButtons.1
                @Override // java.lang.Runnable
                public void run() {
                    MapShiftButtons.this.f13360b.begin();
                    for (int i2 = 0; i2 < MapShiftButtons.this.f13360b.size; i2++) {
                        ((MapShiftButtonsListener) MapShiftButtons.this.f13360b.get(i2)).shifted(direction2);
                    }
                    MapShiftButtons.this.f13360b.end();
                }
            }, MaterialColor.LIGHT_BLUE.P800, MaterialColor.LIGHT_BLUE.P700, MaterialColor.LIGHT_BLUE.P900).setIconPosition(16.0f, 16.0f).setIconSize(64.0f, 64.0f);
            iconSize.setSize(96.0f, 96.0f);
            int i2 = C25714.f13375a[direction2.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            iconSize.setPosition(-48.0f, -96.0f);
                        }
                    } else {
                        iconSize.setPosition(-48.0f, 0.0f);
                    }
                } else {
                    iconSize.setPosition(0.0f, -48.0f);
                }
            } else {
                iconSize.setPosition(-96.0f, -48.0f);
            }
            this.f13362k.get(direction2).addActor(iconSize);
            this.f13363p.put(direction2, iconSize);
            i++;
        }
        objectMap.clear();
        objectMap.put(Direction.LEFT, "icon-triangle-left");
        objectMap.put(Direction.RIGHT, "icon-triangle-right");
        objectMap.put(Direction.DOWN, "icon-triangle-bottom");
        objectMap.put(Direction.UP, "icon-triangle-top");
        Direction[] directionArr4 = Direction.values;
        int length2 = directionArr4.length;
        int i3 = 0;
        while (i3 < length2) {
            final Direction direction3 = directionArr4[i3];
            PaddedImageButton iconSize2 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable((String) objectMap.get(direction3)), new Runnable() { // from class: com.prineside.tdi2.ui.components.MapShiftButtons.2
                @Override // java.lang.Runnable
                public void run() {
                    MapShiftButtons.this.f13360b.begin();
                    for (int i4 = 0; i4 < MapShiftButtons.this.f13360b.size; i4++) {
                        ((MapShiftButtonsListener) MapShiftButtons.this.f13360b.get(i4)).expanded(direction3);
                    }
                    MapShiftButtons.this.f13360b.end();
                }
            }, MaterialColor.GREEN.P800, MaterialColor.GREEN.P700, MaterialColor.GREEN.P900).setIconPosition(16.0f, 16.0f).setIconSize(64.0f, 64.0f);
            iconSize2.setSize(f, f);
            int i4 = C25714.f13375a[direction3.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            iconSize2.setPosition(48.0f, -96.0f);
                        }
                    } else {
                        iconSize2.setPosition(48.0f, 0.0f);
                    }
                } else {
                    iconSize2.setPosition(0.0f, 48.0f);
                }
            } else {
                iconSize2.setPosition(-96.0f, 48.0f);
            }
            this.f13362k.get(direction3).addActor(iconSize2);
            this.f13364q.put(direction3, iconSize2);
            i3++;
            f = 96.0f;
        }
        objectMap.clear();
        objectMap.put(Direction.LEFT, "icon-triangle-right");
        objectMap.put(Direction.RIGHT, "icon-triangle-left");
        objectMap.put(Direction.DOWN, "icon-triangle-top");
        objectMap.put(Direction.UP, "icon-triangle-bottom");
        for (final Direction direction4 : Direction.values) {
            PaddedImageButton iconSize3 = new PaddedImageButton(Game.f8589i.assetManager.getDrawable((String) objectMap.get(direction4)), new Runnable() { // from class: com.prineside.tdi2.ui.components.MapShiftButtons.3
                @Override // java.lang.Runnable
                public void run() {
                    MapShiftButtons.this.f13360b.begin();
                    for (int i5 = 0; i5 < MapShiftButtons.this.f13360b.size; i5++) {
                        ((MapShiftButtonsListener) MapShiftButtons.this.f13360b.get(i5)).reduced(direction4);
                    }
                    MapShiftButtons.this.f13360b.end();
                }
            }, MaterialColor.RED.P800, MaterialColor.RED.P700, MaterialColor.RED.P900).setIconPosition(16.0f, 16.0f).setIconSize(64.0f, 64.0f);
            iconSize3.setSize(96.0f, 96.0f);
            int i5 = C25714.f13375a[direction4.ordinal()];
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        if (i5 == 4) {
                            iconSize3.setPosition(-144.0f, -96.0f);
                        }
                    } else {
                        iconSize3.setPosition(-144.0f, 0.0f);
                    }
                } else {
                    iconSize3.setPosition(0.0f, -144.0f);
                }
            } else {
                iconSize3.setPosition(-96.0f, -144.0f);
            }
            this.f13362k.get(direction4).addActor(iconSize3);
            this.f13365r.put(direction4, iconSize3);
        }
        update();
    }

    public void addListener(MapShiftButtonsListener mapShiftButtonsListener) {
        if (mapShiftButtonsListener != null) {
            if (!this.f13360b.contains(mapShiftButtonsListener, true)) {
                this.f13360b.add(mapShiftButtonsListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f13367t.removeListener(this.f13368u);
        Game.f8589i.uiManager.removeLayer(this.f13359a);
    }

    public void removeListener(MapShiftButtonsListener mapShiftButtonsListener) {
        if (mapShiftButtonsListener != null) {
            this.f13360b.removeValue(mapShiftButtonsListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void setMapSizeChangesAllowed(boolean z) {
        this.f13366s = z;
        update();
    }

    public void update() {
        if (this.f13366s) {
            ObjectMap.Values<PaddedImageButton> it = this.f13364q.values().iterator();
            while (it.hasNext()) {
                it.next().setVisible(true);
            }
            ObjectMap.Values<PaddedImageButton> it2 = this.f13365r.values().iterator();
            while (it2.hasNext()) {
                it2.next().setVisible(true);
            }
        } else {
            ObjectMap.Values<PaddedImageButton> it3 = this.f13364q.values().iterator();
            while (it3.hasNext()) {
                it3.next().setVisible(false);
            }
            ObjectMap.Values<PaddedImageButton> it4 = this.f13365r.values().iterator();
            while (it4.hasNext()) {
                it4.next().setVisible(false);
            }
        }
        Vector2 vector2 = new Vector2();
        vector2.set(-16.0f, this.f13367t.getMapHeight() * 0.5f);
        this.f13367t.mapToStage(vector2);
        this.f13362k.get(Direction.LEFT).setPosition(vector2.f5527x, vector2.f5528y);
        vector2.set(this.f13367t.getMapWidth() + 16.0f, this.f13367t.getMapHeight() * 0.5f);
        this.f13367t.mapToStage(vector2);
        this.f13362k.get(Direction.RIGHT).setPosition(vector2.f5527x, vector2.f5528y);
        vector2.set(this.f13367t.getMapWidth() * 0.5f, -16.0f);
        this.f13367t.mapToStage(vector2);
        this.f13362k.get(Direction.DOWN).setPosition(vector2.f5527x, vector2.f5528y);
        vector2.set(this.f13367t.getMapWidth() * 0.5f, this.f13367t.getMapHeight() + 16.0f);
        this.f13367t.mapToStage(vector2);
        this.f13362k.get(Direction.UP).setPosition(vector2.f5527x, vector2.f5528y);
    }
}
