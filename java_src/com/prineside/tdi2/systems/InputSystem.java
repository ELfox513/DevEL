package com.prineside.tdi2.systems;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.InputMultiplexer;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.SideMenu;
import com.prineside.tdi2.p036ui.components.QuestList;
import com.prineside.tdi2.p036ui.components.StatisticsChart;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.NAGS;
@NAGS
/* loaded from: classes2.dex */
public class InputSystem extends GameSystem {

    /* renamed from: a */
    public InputMultiplexer f11511a;

    /* renamed from: b */
    public InputMultiplexer f11512b;
    public CameraController cameraController;

    /* renamed from: d */
    public Tile f11513d;

    /* renamed from: k */
    public Gate f11514k;

    /* renamed from: q */
    public boolean f11516q;

    /* renamed from: r */
    public InputProcessor f11517r;

    /* renamed from: w */
    public float f11522w;

    /* renamed from: x */
    public int f11523x;

    /* renamed from: y */
    public int f11524y;

    /* renamed from: p */
    public final Vector2 f11515p = new Vector2();

    /* renamed from: s */
    public boolean f11518s = false;
    public final ListenerGroup<InputSystemListener> listeners = new ListenerGroup<>(InputSystemListener.class);

    /* renamed from: t */
    public final _Game_StateSystemListener f11519t = new _Game_StateSystemListener(this, null);

    /* renamed from: u */
    public final _ScreenResizeListener f11520u = new _ScreenResizeListener(this, null);

    /* renamed from: v */
    public final _MapSystemListener f11521v = new _MapSystemListener(this, null);

    /* renamed from: z */
    public final _InputProcessor f11525z = new _InputProcessor(this, null);

    /* renamed from: com.prineside.tdi2.systems.InputSystem$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23071 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11526a;

        static {
            int[] iArr = new int[SettingsManager.HotkeyAction.values().length];
            f11526a = iArr;
            try {
                iArr[SettingsManager.HotkeyAction.BUILD_TOWER_BASIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_SNIPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_CANNON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_FREEZING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_AIR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_SPLASH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_BLAST.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_MULTISHOT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_MINIGUN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_VENOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_TESLA.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_MISSILE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_FLAMETHROWER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_LASER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_GAUSS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_TOWER_CRUSHER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MODIFIER_BALANCE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MODIFIER_SEARCH.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MODIFIER_POWER.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MODIFIER_DAMAGE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MODIFIER_ATTACK_SPEED.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MODIFIER_MINING_SPEED.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MODIFIER_BOUNTY.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MODIFIER_EXPERIENCE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MINER_SCALAR.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MINER_VECTOR.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MINER_MATRIX.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MINER_TENSOR.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.BUILD_MINER_INFIAR.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.ABILITY_1.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.ABILITY_2.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.ABILITY_3.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.ABILITY_4.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.ABILITY_5.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.ABILITY_6.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_1.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_2.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_3.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_4.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_5.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_6.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_ALL_1.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_ALL_2.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_ALL_3.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_ALL_4.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_ALL_5.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOWER_ABILITY_ALL_6.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.CALL_WAVE.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOGGLE_TILE_MENU.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOGGLE_AUTO_WAVE_CALL.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.PAUSE_GAME.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.SPEED_UP.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.SPEED_DOWN.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.SWITCH_DRAW_MODE.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOGGLE_QUEST_LIST.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOGGLE_STATS_PANE.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.TOGGLE_LEADERBOARD.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.ZOOM_1X.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.ZOOM_FIT_MAP.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.PANIC.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.UPGRADE_BUILDING.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.UPGRADE_ALL_BUILDINGS.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.SELL_BUILDING.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.AIM_MODE_SWITCH_NEXT.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                f11526a[SettingsManager.HotkeyAction.AIM_MODE_SWITCH_PREVIOUS.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface InputSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class InputSystemListenerAdapter implements InputSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.InputSystem.InputSystemListener
            public void backButtonPressed() {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.InputSystem.InputSystemListener
            public void mapEntityTouched(Tile tile, Gate gate) {
            }

            @Override // com.prineside.tdi2.systems.InputSystem.InputSystemListener
            public void pointingMapElementChanged(Tile tile, Tile tile2, Gate gate, Gate gate2) {
            }
        }

        void backButtonPressed();

        void mapEntityTouched(Tile tile, Gate gate);

        void pointingMapElementChanged(Tile tile, Tile tile2, Gate gate, Gate gate2);
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _Game_StateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _Game_StateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void realUpdate(float f) {
            InputSystem.this.cameraController.realUpdate(f);
        }

        public /* synthetic */ _Game_StateSystemListener(InputSystem inputSystem, C23071 c23071) {
            this();
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gamePaused() {
            InputSystem.this.f11517r = Gdx.input.getInputProcessor();
            InputSystem.this.enableOnlyStage();
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gameResumed() {
            Logger.log("InputSystem", "game resumed, input processor: " + InputSystem.this.f11517r);
            Gdx.input.setInputProcessor(InputSystem.this.f11517r);
        }
    }

    /* loaded from: classes2.dex */
    public class _InputProcessor extends InputAdapter {

        /* renamed from: a */
        public final Vector2 f11528a;

        public _InputProcessor() {
            this.f11528a = new Vector2();
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean keyDown(int i) {
            return false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean mouseMoved(int i, int i2) {
            if (!InputSystem.this.f11518s) {
                InputSystem inputSystem = InputSystem.this;
                if (inputSystem.cameraController != null) {
                    inputSystem.f11515p.set(i, i2);
                    InputSystem inputSystem2 = InputSystem.this;
                    inputSystem2.cameraController.screenToMap(inputSystem2.f11515p);
                    Tile tileByMapPos = InputSystem.this.f8844S.map.getMap().getTileByMapPos(InputSystem.this.f11515p.f5527x, InputSystem.this.f11515p.f5528y);
                    Gate gateByMapPos = InputSystem.this.f8844S.map.getMap().getGateByMapPos(InputSystem.this.f11515p.f5527x, InputSystem.this.f11515p.f5528y);
                    if (InputSystem.this.f11513d != tileByMapPos || InputSystem.this.f11514k != gateByMapPos) {
                        InputSystem.this.listeners.begin();
                        int size = InputSystem.this.listeners.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            InputSystem.this.listeners.get(i3).pointingMapElementChanged(InputSystem.this.f11513d, tileByMapPos, InputSystem.this.f11514k, gateByMapPos);
                        }
                        InputSystem.this.listeners.end();
                        InputSystem.this.f11513d = tileByMapPos;
                        InputSystem.this.f11514k = gateByMapPos;
                        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DISABLE_TILE_HOVERING) != 1.0d) {
                            if (gateByMapPos != null) {
                                if (InputSystem.this.f8844S.map.getHoveredTile() != null) {
                                    InputSystem.this.f8844S.map.setHoveredTile(null);
                                }
                                InputSystem.this.f8844S.map.setHoveredGate(gateByMapPos);
                            } else {
                                if (InputSystem.this.f8844S.map.getHoveredGate() != null) {
                                    InputSystem.this.f8844S.map.setHoveredGate(null);
                                }
                                InputSystem.this.f8844S.map.setHoveredTile(tileByMapPos);
                            }
                        }
                    }
                }
            }
            return false;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) {
            if (!InputSystem.this.f11518s && InputSystem.this.cameraController != null) {
                this.f11528a.set(i, i2);
                InputSystem.this.cameraController.screenToMap(this.f11528a);
                Map map = InputSystem.this.f8844S.map.getMap();
                Vector2 vector2 = this.f11528a;
                Tile tileByMapPos = map.getTileByMapPos(vector2.f5527x, vector2.f5528y);
                Map map2 = InputSystem.this.f8844S.map.getMap();
                Vector2 vector22 = this.f11528a;
                Gate gateByMapPos = map2.getGateByMapPos(vector22.f5527x, vector22.f5528y);
                if (gateByMapPos != null) {
                    InputSystem.this.f8844S.map.setSelectedTile(null);
                    InputSystem.this.f8844S.map.setSelectedGate(gateByMapPos);
                } else {
                    InputSystem.this.f8844S.map.setSelectedGate(null);
                    InputSystem.this.f8844S.map.setSelectedTile(tileByMapPos);
                }
                InputSystem.this.listeners.begin();
                int size = InputSystem.this.listeners.size();
                for (int i5 = 0; i5 < size; i5++) {
                    InputSystem.this.listeners.get(i5).mapEntityTouched(tileByMapPos, gateByMapPos);
                }
                InputSystem.this.listeners.end();
            }
            return false;
        }

        public /* synthetic */ _InputProcessor(InputSystem inputSystem, C23071 c23071) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        public /* synthetic */ _MapSystemListener(InputSystem inputSystem, C23071 c23071) {
            this();
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void selectedTileChanged(Tile tile) {
            Tile selectedTile = InputSystem.this.f8844S.map.getSelectedTile();
            if (selectedTile != null) {
                InputSystem.this.f11523x = selectedTile.getX();
                InputSystem.this.f11524y = selectedTile.getY();
            }
        }
    }

    /* loaded from: classes2.dex */
    public class _ScreenResizeListener extends Game.ScreenResizeListener.ScreenResizeListenerAdapter {
        public _ScreenResizeListener() {
        }

        public /* synthetic */ _ScreenResizeListener(InputSystem inputSystem, C23071 c23071) {
            this();
        }

        @Override // com.prineside.tdi2.Game.ScreenResizeListener.ScreenResizeListenerAdapter, com.prineside.tdi2.Game.ScreenResizeListener
        public void resize(int i, int i2) {
            if (!InputSystem.this.f11518s && i > 0 && i2 > 0) {
                InputSystem.this.cameraController.setScreenSize(i, i2);
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    public void disableInput() {
        Gdx.input.setInputProcessor(null);
    }

    public void enableAllInput() {
        Gdx.input.setInputProcessor(this.f11511a);
    }

    public void enableOnlyStage() {
        Game.f8589i.uiManager.setAsInputHandler();
    }

    public CameraController getCameraController() {
        return this.cameraController;
    }

    public InputProcessor getInputProcessor() {
        return Gdx.input.getInputProcessor();
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Input";
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    public void setHotKeysEnabled(boolean z) {
        this.f11516q = !z;
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.removeScreenResizeListener(this.f11520u);
        this.f11511a = null;
        this.f11512b = null;
        this.cameraController = null;
        this.f11513d = null;
        this.f11514k = null;
        this.f11517r = null;
        this.f11518s = true;
        super.dispose();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void draw(SpriteBatch spriteBatch, float f, float f2) {
        boolean z;
        Building building;
        Building building2;
        Miner miner;
        Miner miner2;
        Miner miner3;
        int i;
        int i2;
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_CURSOR_POS) != 0.0d) {
            Vector2 vector2 = this.f11515p;
            Game.f8589i.assetManager.getDebugFont(false).draw(spriteBatch, ((int) this.f11515p.f5527x) + ":" + ((int) this.f11515p.f5528y), vector2.f5527x + 10.0f, vector2.f5528y - 10.0f);
        }
        float f3 = this.f11522w;
        if (f3 != 0.0f) {
            spriteBatch.setColor(1.0f, 1.0f, 1.0f, f3);
            spriteBatch.draw(Game.f8589i.assetManager.f9555TR.tileOutlineHover, (this.f11523x * 128) - 12.0f, (this.f11524y * 128) - 12.0f, 152.0f, 152.0f);
            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            float f4 = this.f11522w - f2;
            this.f11522w = f4;
            if (f4 < 0.0f) {
                this.f11522w = 0.0f;
            }
        }
        if (!this.f11518s && !this.f8844S.gameState.isPaused() && !this.f11516q) {
            SettingsManager settingsManager = Game.f8589i.settingsManager;
            if (settingsManager.isEscButtonJustPressed()) {
                this.listeners.begin();
                int size = this.listeners.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.listeners.get(i3).backButtonPressed();
                }
                this.listeners.end();
                return;
            }
            int i4 = 1;
            if (Gdx.input.isKeyJustPressed(20)) {
                int i5 = this.f11524y - 1;
                this.f11524y = i5;
                if (i5 < 0) {
                    this.f11524y = 0;
                }
                z = true;
            } else {
                z = false;
            }
            if (Gdx.input.isKeyJustPressed(21)) {
                int i6 = this.f11523x - 1;
                this.f11523x = i6;
                if (i6 < 0) {
                    this.f11523x = 0;
                }
                z = true;
            }
            if (Gdx.input.isKeyJustPressed(22)) {
                int i7 = this.f11523x + 1;
                this.f11523x = i7;
                if (i7 > this.f8844S.map.getMap().widthTiles - 1) {
                    this.f11523x = this.f8844S.map.getMap().widthTiles - 1;
                }
                z = true;
            }
            if (Gdx.input.isKeyJustPressed(19)) {
                int i8 = this.f11524y + 1;
                this.f11524y = i8;
                if (i8 > this.f8844S.map.getMap().heightTiles - 1) {
                    this.f11524y = this.f8844S.map.getMap().heightTiles - 1;
                }
                z = true;
            }
            if (z) {
                MapSystem mapSystem = this.f8844S.map;
                mapSystem.setSelectedTile(mapSystem.getMap().getTile(this.f11523x, this.f11524y));
                this.f11522w = 1.0f;
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
            }
            Array<SettingsManager.HotkeyAction> hotkeysJustPressed = settingsManager.getHotkeysJustPressed();
            int i9 = 0;
            while (i9 < hotkeysJustPressed.size) {
                SettingsManager.HotkeyAction hotkeyAction = hotkeysJustPressed.items[i9];
                int[] iArr = C23071.f11526a;
                TowerType towerType = null;
                MinerType minerType = null;
                ModifierType modifierType = null;
                int i10 = 5;
                switch (iArr[hotkeyAction.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                        Tile selectedTile = this.f8844S.map.getSelectedTile();
                        if ((selectedTile instanceof PlatformTile) && ((PlatformTile) selectedTile).building == null) {
                            switch (iArr[hotkeyAction.ordinal()]) {
                                case 1:
                                    towerType = TowerType.BASIC;
                                    break;
                                case 2:
                                    towerType = TowerType.SNIPER;
                                    break;
                                case 3:
                                    towerType = TowerType.CANNON;
                                    break;
                                case 4:
                                    towerType = TowerType.FREEZING;
                                    break;
                                case 5:
                                    towerType = TowerType.AIR;
                                    break;
                                case 6:
                                    towerType = TowerType.SPLASH;
                                    break;
                                case 7:
                                    towerType = TowerType.BLAST;
                                    break;
                                case 8:
                                    towerType = TowerType.MULTISHOT;
                                    break;
                                case 9:
                                    towerType = TowerType.MINIGUN;
                                    break;
                                case 10:
                                    towerType = TowerType.VENOM;
                                    break;
                                case 11:
                                    towerType = TowerType.TESLA;
                                    break;
                                case 12:
                                    towerType = TowerType.MISSILE;
                                    break;
                                case 13:
                                    towerType = TowerType.FLAMETHROWER;
                                    break;
                                case 14:
                                    towerType = TowerType.LASER;
                                    break;
                                case 15:
                                    towerType = TowerType.GAUSS;
                                    break;
                                case 16:
                                    towerType = TowerType.CRUSHER;
                                    break;
                            }
                            if (towerType != null) {
                                this.f8844S.tower.buildTowerAction(towerType);
                                break;
                            } else {
                                break;
                            }
                        }
                        break;
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        Tile selectedTile2 = this.f8844S.map.getSelectedTile();
                        if ((selectedTile2 instanceof PlatformTile) && ((PlatformTile) selectedTile2).building == null) {
                            switch (iArr[hotkeyAction.ordinal()]) {
                                case 17:
                                    modifierType = ModifierType.BALANCE;
                                    break;
                                case 18:
                                    modifierType = ModifierType.SEARCH;
                                    break;
                                case 19:
                                    modifierType = ModifierType.POWER;
                                    break;
                                case 20:
                                    modifierType = ModifierType.DAMAGE;
                                    break;
                                case 21:
                                    modifierType = ModifierType.ATTACK_SPEED;
                                    break;
                                case 22:
                                    modifierType = ModifierType.MINING_SPEED;
                                    break;
                                case 23:
                                    modifierType = ModifierType.BOUNTY;
                                    break;
                                case 24:
                                    modifierType = ModifierType.EXPERIENCE;
                                    break;
                            }
                            this.f8844S.modifier.buildModifierAction(modifierType);
                            break;
                        }
                        break;
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                        Tile selectedTile3 = this.f8844S.map.getSelectedTile();
                        if ((selectedTile3 instanceof SourceTile) && ((SourceTile) selectedTile3).miner == null) {
                            switch (iArr[hotkeyAction.ordinal()]) {
                                case 25:
                                    minerType = MinerType.SCALAR;
                                    break;
                                case 26:
                                    minerType = MinerType.VECTOR;
                                    break;
                                case 27:
                                    minerType = MinerType.MATRIX;
                                    break;
                                case 28:
                                    minerType = MinerType.TENSOR;
                                    break;
                                case 29:
                                    minerType = MinerType.INFIAR;
                                    break;
                            }
                            this.f8844S.miner.buildMinerAction(minerType);
                            break;
                        }
                        break;
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                        switch (iArr[hotkeyAction.ordinal()]) {
                            case 30:
                            default:
                                i10 = 0;
                                break;
                            case 31:
                                i10 = 1;
                                break;
                            case 32:
                                i10 = 2;
                                break;
                            case 33:
                                i10 = 3;
                                break;
                            case 34:
                                i10 = 4;
                                break;
                            case 35:
                                break;
                        }
                        AbilitySystem abilitySystem = this.f8844S.ability;
                        AbilityType abilityType = abilitySystem.abilitiesConfiguration.slots[i10];
                        if (abilityType == null) {
                            break;
                        } else {
                            if (abilitySystem.getUiCurrentlyUsingAbility() == abilityType) {
                                this.f8844S.ability.cancelUsingAbility();
                            } else {
                                this.f8844S.ability.startUsingAbility(abilityType);
                            }
                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                            break;
                        }
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                        Tile selectedTile4 = this.f8844S.map.getSelectedTile();
                        if ((selectedTile4 instanceof PlatformTile) && (building = ((PlatformTile) selectedTile4).building) != null && building.buildingType == BuildingType.TOWER) {
                            switch (iArr[hotkeyAction.ordinal()]) {
                                case 36:
                                default:
                                    i10 = 0;
                                    break;
                                case 37:
                                    i10 = 1;
                                    break;
                                case 38:
                                    i10 = 2;
                                    break;
                                case 39:
                                    i10 = 3;
                                    break;
                                case 40:
                                    i10 = 4;
                                    break;
                                case 41:
                                    break;
                            }
                            this.f8844S.tower.selectTowerAbilityAction((Tower) building, i10);
                            break;
                        }
                        break;
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                        Logger.log("InputSystem", hotkeyAction.name());
                        Tile selectedTile5 = this.f8844S.map.getSelectedTile();
                        if ((selectedTile5 instanceof PlatformTile) && (building2 = ((PlatformTile) selectedTile5).building) != null && building2.buildingType == BuildingType.TOWER) {
                            switch (iArr[hotkeyAction.ordinal()]) {
                                case 42:
                                default:
                                    i10 = 0;
                                    break;
                                case 43:
                                    i10 = 1;
                                    break;
                                case 44:
                                    i10 = 2;
                                    break;
                                case 45:
                                    i10 = 3;
                                    break;
                                case 46:
                                    i10 = 4;
                                    break;
                                case 47:
                                    break;
                            }
                            this.f8844S.tower.selectGlobalTowerAbilityAction((Tower) building2, i10);
                            break;
                        }
                        break;
                    case 48:
                        if (this.f8844S._graphics.mainUi.nextWaveButtonVisible()) {
                            this.f8844S.wave.forceNextWaveAction();
                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        SideMenu sideMenu = this.f8844S._graphics.sideMenu;
                        sideMenu.setOffscreen((sideMenu.isOffscreen() ? 1 : 0) ^ i4);
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        break;
                    case 50:
                        WaveSystem waveSystem = this.f8844S.wave;
                        waveSystem.setAutoForceWaveEnabled((waveSystem.autoForceWaveEnabled ? 1 : 0) ^ i4);
                        GameSystemProvider gameSystemProvider = this.f8844S;
                        if (gameSystemProvider.wave.autoForceWaveEnabled) {
                            gameSystemProvider._sound.playStatic(StaticSoundType.AUTO_FORCE_WAVE);
                            break;
                        } else {
                            break;
                        }
                    case 51:
                        float f5 = 0.0667f;
                        if (this.f8844S.gameState.getGameSpeed() <= 0.0667f) {
                            this.f8844S.gameState.setGameSpeed(1.0f);
                            break;
                        } else {
                            if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SLOW_MOTION_PAUSE) == 0.0d) {
                                f5 = 0.0f;
                            }
                            this.f8844S.gameState.setGameSpeed(f5);
                            break;
                        }
                    case 52:
                        this.f8844S.gameState.higherGameSpeed();
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        break;
                    case 53:
                        this.f8844S.gameState.lowerGameSpeed();
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        break;
                    case 54:
                        this.f8844S._mapRendering.switchMapDrawMode();
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        break;
                    case 55:
                        QuestList questList = this.f8844S._graphics.questList;
                        questList.setVisible((questList.isVisible() ? 1 : 0) ^ i4);
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        break;
                    case 56:
                        StatisticsChart statisticsChart = this.f8844S._graphics._statisticsChart;
                        if (statisticsChart != null) {
                            statisticsChart.setVisible((statisticsChart.isVisible() ? 1 : 0) ^ i4);
                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        this.f8844S._graphics.liveLeaderboard.toggleVisible();
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        break;
                    case 58:
                        this.f8844S._input.cameraController.setZoom(1.0d);
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        break;
                    case 59:
                        this.f8844S._input.cameraController.fitMapToScreen(60.0f);
                        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        break;
                    case 60:
                        Game.exit();
                        break;
                    case 61:
                        Tile selectedTile6 = this.f8844S.map.getSelectedTile();
                        if (selectedTile6 instanceof PlatformTile) {
                            Building building3 = ((PlatformTile) selectedTile6).building;
                            if (building3 != null && building3.buildingType == BuildingType.TOWER) {
                                this.f8844S.tower.upgradeTowerAction((Tower) building3);
                                break;
                            }
                        } else if ((selectedTile6 instanceof SourceTile) && (miner = ((SourceTile) selectedTile6).miner) != null) {
                            this.f8844S.miner.upgradeMinerAction(miner);
                            break;
                        }
                        break;
                    case 62:
                        Tile selectedTile7 = this.f8844S.map.getSelectedTile();
                        if (selectedTile7 instanceof PlatformTile) {
                            Building building4 = ((PlatformTile) selectedTile7).building;
                            if (building4 != null && building4.buildingType == BuildingType.TOWER) {
                                this.f8844S.tower.globalUpgradeTowerAction(((Tower) building4).type);
                                break;
                            }
                        } else if ((selectedTile7 instanceof SourceTile) && (miner2 = ((SourceTile) selectedTile7).miner) != null) {
                            this.f8844S.miner.globalUpgradeMinerAction(miner2.type);
                            break;
                        }
                        break;
                    case 63:
                        Tile selectedTile8 = this.f8844S.map.getSelectedTile();
                        if (selectedTile8 instanceof PlatformTile) {
                            Building building5 = ((PlatformTile) selectedTile8).building;
                            if (building5 == null) {
                                break;
                            } else {
                                BuildingType buildingType = building5.buildingType;
                                if (buildingType == BuildingType.TOWER) {
                                    this.f8844S.tower.sellTowerAction((Tower) building5);
                                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                    break;
                                } else if (buildingType == BuildingType.MODIFIER) {
                                    this.f8844S.modifier.sellModifierAction((Modifier) building5);
                                    Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                    break;
                                } else {
                                    break;
                                }
                            }
                        } else if ((selectedTile8 instanceof SourceTile) && (miner3 = ((SourceTile) selectedTile8).miner) != null) {
                            this.f8844S.miner.sellMinerAction(miner3);
                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                            break;
                        }
                        break;
                    case 64:
                        Tile selectedTile9 = this.f8844S.map.getSelectedTile();
                        if (selectedTile9 instanceof PlatformTile) {
                            Building building6 = ((PlatformTile) selectedTile9).building;
                            if (building6 != null && building6.buildingType == BuildingType.TOWER) {
                                Tower tower = (Tower) building6;
                                int ordinal = tower.aimStrategy.ordinal();
                                Tower.AimStrategy[] aimStrategyArr = Tower.AimStrategy.values;
                                if (ordinal < aimStrategyArr.length - i4) {
                                    i2 = tower.aimStrategy.ordinal() + i4;
                                } else {
                                    i2 = 0;
                                }
                                this.f8844S.tower.setTowerAimStrategyAction(tower, aimStrategyArr[i2]);
                                this.f8844S._graphics.tooltip.show(Game.f8589i.towerManager.getAimStrategyName(aimStrategyArr[i2]));
                                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                break;
                            } else {
                                int ordinal2 = this.f8844S.tower.getDefaultAimStrategy().ordinal();
                                Tower.AimStrategy[] aimStrategyArr2 = Tower.AimStrategy.values;
                                if (ordinal2 < aimStrategyArr2.length - i4) {
                                    i = this.f8844S.tower.getDefaultAimStrategy().ordinal() + i4;
                                } else {
                                    i = 0;
                                }
                                this.f8844S.tower.setDefaultAimStrategy(aimStrategyArr2[i]);
                                this.f8844S._graphics.tooltip.show(Game.f8589i.towerManager.getAimStrategyName(aimStrategyArr2[i]));
                                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                break;
                            }
                        } else {
                            break;
                        }
                        break;
                    case 65:
                        Tile selectedTile10 = this.f8844S.map.getSelectedTile();
                        if (selectedTile10 instanceof PlatformTile) {
                            Building building7 = ((PlatformTile) selectedTile10).building;
                            if (building7 != null && building7.buildingType == BuildingType.TOWER) {
                                Tower tower2 = (Tower) building7;
                                Tower.AimStrategy[] aimStrategyArr3 = Tower.AimStrategy.values;
                                int length = aimStrategyArr3.length - i4;
                                if (tower2.aimStrategy.ordinal() != 0) {
                                    length = tower2.aimStrategy.ordinal() - i4;
                                }
                                this.f8844S.tower.setTowerAimStrategyAction(tower2, aimStrategyArr3[length]);
                                this.f8844S._graphics.tooltip.show(Game.f8589i.towerManager.getAimStrategyName(aimStrategyArr3[length]));
                                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                break;
                            } else {
                                Tower.AimStrategy[] aimStrategyArr4 = Tower.AimStrategy.values;
                                int length2 = aimStrategyArr4.length - i4;
                                if (this.f8844S.tower.getDefaultAimStrategy().ordinal() != 0) {
                                    length2 = this.f8844S.tower.getDefaultAimStrategy().ordinal() - i4;
                                }
                                this.f8844S.tower.setDefaultAimStrategy(aimStrategyArr4[length2]);
                                this.f8844S._graphics.tooltip.show(Game.f8589i.towerManager.getAimStrategyName(aimStrategyArr4[length2]));
                                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                                break;
                            }
                        } else {
                            break;
                        }
                }
                i9++;
                i4 = 1;
            }
        }
    }

    public void setCustomMapInputProcessor(InputProcessor inputProcessor) {
        this.f11512b.addProcessor(Game.f8589i.uiManager.stage);
        this.f11512b.addProcessor(this.cameraController.getInputProcessor());
        this.f11512b.addProcessor(inputProcessor);
        Gdx.input.setInputProcessor(this.f11512b);
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        this.f8844S.gameState.listeners.add(this.f11519t);
        this.f8844S.map.listeners.add(this.f11521v);
        GameSystemProvider gameSystemProvider = this.f8844S;
        CameraController cameraController = new CameraController(gameSystemProvider._graphics.camera, gameSystemProvider.map.getMap().widthPixels, this.f8844S.map.getMap().heightPixels);
        this.cameraController = cameraController;
        cameraController.setScreenSize(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        this.cameraController.lookAt(this.f8844S.map.getMap().widthPixels / 2, this.f8844S.map.getMap().heightPixels / 2);
        this.cameraController.fitMapToScreen(60.0f);
        Gdx.input.setCatchKey(4, true);
        InputMultiplexer inputMultiplexer = new InputMultiplexer();
        this.f11511a = inputMultiplexer;
        inputMultiplexer.addProcessor(Game.f8589i.uiManager.stage);
        this.f11511a.addProcessor(this.cameraController.getInputProcessor());
        this.f11511a.addProcessor(this.f11525z);
        this.f11512b = new InputMultiplexer();
        disableInput();
        this.f11523x = this.f8844S.map.getMap().widthTiles / 2;
        this.f11524y = this.f8844S.map.getMap().heightTiles / 2;
        Game.f8589i.addScreenResizeListener(this.f11520u);
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        enableAllInput();
        this.cameraController.setMap(this.f8844S.map.getMap());
    }
}
