package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.ModifierProcessor;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.actions.BuildModifierAction;
import com.prineside.tdi2.actions.CustomModifierButtonAction;
import com.prineside.tdi2.actions.SellModifierAction;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ModifierSystem extends GameSystem {

    /* renamed from: a */
    public int f11647a;

    /* renamed from: b */
    public int[] f11648b;

    /* renamed from: d */
    public ScheduledUpdater f11649d;

    /* renamed from: k */
    public ModifierProcessor[] f11650k;
    public ListenerGroup<ModifierSystemListener> listeners;
    public DelayedRemovalArray<Modifier> modifiers = new DelayedRemovalArray<>(false, 8, Modifier.class);
    public int[] modifiersBuiltByType;
    public int[] modifiersBuiltByTypeAllTime;
    public int[] modifiersSoldByTypeAllTime;

    /* renamed from: p */
    public ScheduledUpdater f11651p;

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface ModifierSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static class ModifierSystemListenerAdapter implements ModifierSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener
            public void customButtonPressed(Modifier modifier) {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener
            public void modifierBuilt(Modifier modifier, int i) {
            }

            @Override // com.prineside.tdi2.systems.ModifierSystem.ModifierSystemListener
            public void modifierSold(Modifier modifier, int i) {
            }
        }

        void customButtonPressed(Modifier modifier);

        void modifierBuilt(Modifier modifier, int i);

        void modifierSold(Modifier modifier, int i);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11652a;

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 8218445;
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerPlacedOnMap(Miner miner) {
            this.f11652a.modifier.m20933e(miner.getTile().getX(), miner.getTile().getY());
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerRemovedFromMap(Miner miner, SourceTile sourceTile) {
            this.f11652a.modifier.m20933e(sourceTile.getX(), sourceTile.getY());
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11652a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void towerPlacedOnMap(Tower tower) {
            this.f11652a.modifier.m20933e(tower.getTile().getX(), tower.getTile().getY());
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11652a, GameSystemProvider.class);
        }

        @Deprecated
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void buildingRemovedFromMap(Building building, PlatformTile platformTile) {
            if (building.buildingType == BuildingType.MODIFIER) {
                this.f11652a.modifier.m20931g((Modifier) building);
            }
            this.f11652a.modifier.m20933e(platformTile.getX(), platformTile.getY());
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void modifierPlacedOnMap(Modifier modifier) {
            this.f11652a.modifier.m20932f(modifier);
            this.f11652a.modifier.m20933e(modifier.getTile().getX(), modifier.getTile().getY());
        }

        public _MapSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11652a = gameSystemProvider;
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public void buildModifierAction(ModifierType modifierType) {
        Tile selectedTile = this.f8844S.map.getSelectedTile();
        if (selectedTile != null && selectedTile.type == TileType.PLATFORM && ((PlatformTile) selectedTile).building == null) {
            buildModifierAction(modifierType, selectedTile.getX(), selectedTile.getY());
        }
    }

    public void customModifierButtonAction(Modifier modifier, int i, int i2) {
        this.f8844S.gameState.pushAction(new CustomModifierButtonAction(modifier.getTile().getX(), modifier.getTile().getY(), i, i2));
    }

    /* renamed from: d */
    public final int m20934d(ModifierType modifierType) {
        return this.f11648b[modifierType.ordinal()];
    }

    public int getBuildPrice(ModifierType modifierType) {
        return Game.f8589i.modifierManager.getFactory(modifierType).getBuildPrice(this.f8844S, m20934d(modifierType));
    }

    public int getBuildableModifiersCount(ModifierType modifierType) {
        return getMaxModifiersCount(modifierType) - this.f11648b[modifierType.ordinal()];
    }

    public int getMaxModifiersCount(ModifierType modifierType) {
        return this.f8844S.gameValue.getIntValue(Game.f8589i.modifierManager.getCountGameValue(modifierType));
    }

    public ModifierProcessor getProcessor(ModifierType modifierType) {
        return this.f11650k[modifierType.ordinal()];
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Modifier";
    }

    public boolean isRegistered(Modifier modifier) {
        return modifier.isRegistered();
    }

    public void sellModifierAction(Modifier modifier) {
        this.f8844S.gameState.pushAction(new SellModifierAction(modifier.getTile().getX(), modifier.getTile().getY()));
    }

    public void buildModifier(ModifierType modifierType, int i, int i2) {
        PlatformTile platformTile;
        Building building;
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (this.f11648b[modifierType.ordinal()] + 1 > getMaxModifiersCount(modifierType)) {
            Logger.error("ModifierSystem", "No more modifiers of type " + modifierType.name() + " can be built");
            return;
        }
        Tile tile = this.f8844S.map.getMap().getTile(i, i2);
        if (tile != null) {
            if (tile.type == TileType.PLATFORM) {
                PlatformTile platformTile2 = (PlatformTile) tile;
                if (platformTile2.building == null) {
                    Array<Tile> neighbourTiles = platformTile2.getNeighbourTiles();
                    boolean z = true;
                    for (int i3 = 0; i3 < neighbourTiles.size; i3++) {
                        Tile tile2 = neighbourTiles.items[i3];
                        if (tile2.type == TileType.PLATFORM && (building = (platformTile = (PlatformTile) tile2).building) != null && building.buildingType == BuildingType.MODIFIER && !Game.f8589i.modifierManager.getFactory(modifierType).canBePlacedNear(((Modifier) platformTile.building).type)) {
                            z = false;
                        }
                    }
                    if (z) {
                        Modifier create = Game.f8589i.modifierManager.getFactory(modifierType).create();
                        int buildPrice = getBuildPrice(modifierType);
                        if (this.f8844S.gameState.removeMoney(buildPrice)) {
                            create.moneySpentOn.set(buildPrice);
                            this.f8844S.map.setModifier(tile.getX(), tile.getY(), create);
                            int[] iArr = this.modifiersBuiltByType;
                            int ordinal = modifierType.ordinal();
                            iArr[ordinal] = iArr[ordinal] + 1;
                            int[] iArr2 = this.modifiersBuiltByTypeAllTime;
                            int ordinal2 = modifierType.ordinal();
                            iArr2[ordinal2] = iArr2[ordinal2] + 1;
                            this.listeners.begin();
                            int size = this.listeners.size();
                            for (int i4 = 0; i4 < size; i4++) {
                                this.listeners.get(i4).modifierBuilt(create, buildPrice);
                            }
                            this.listeners.end();
                            return;
                        }
                        Logger.error("ModifierSystem", "not enough money to build a modifier");
                        return;
                    }
                    Logger.error("ModifierSystem", "can't place near other modifier");
                    return;
                }
                Logger.error("ModifierSystem", "trying to build modifier on tile which already has a building");
                return;
            }
            Logger.error("ModifierSystem", "buildModifier - tile type is " + tile.type.name());
            return;
        }
        Logger.error("ModifierSystem", "buildModifier - tile is null");
    }

    public void customModifierButtonAction(int i, int i2, int i3, int i4) {
        this.f8844S.gameState.pushAction(new CustomModifierButtonAction(i, i2, i3, i4));
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f11651p.clear();
        int i = 0;
        while (true) {
            ModifierProcessor[] modifierProcessorArr = this.f11650k;
            if (i < modifierProcessorArr.length) {
                ModifierProcessor modifierProcessor = modifierProcessorArr[i];
                if (modifierProcessor != null) {
                    modifierProcessor.setUnregistered();
                    this.f11650k[i] = null;
                }
                i++;
            } else {
                this.listeners.clear();
                this.modifiers.clear();
                this.f11649d.clear();
                super.dispose();
                return;
            }
        }
    }

    public void drawBatch(SpriteBatch spriteBatch, float f) {
        this.modifiers.begin();
        MapRenderingSystem.DrawMode drawMode = this.f8844S._mapRendering.getDrawMode();
        int i = this.modifiers.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.modifiers.items[i2].drawBatch(spriteBatch, f, drawMode);
        }
        this.modifiers.end();
    }

    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        this.modifiers.begin();
        MapRenderingSystem.DrawMode drawMode = this.f8844S._mapRendering.getDrawMode();
        int i = this.modifiers.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.modifiers.items[i2].drawBatchAdditive(spriteBatch, f, drawMode);
        }
        this.modifiers.end();
    }

    /* renamed from: e */
    public final void m20933e(int i, int i2) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        int i3 = 0;
        while (true) {
            DelayedRemovalArray<Modifier> delayedRemovalArray = this.modifiers;
            if (i3 < delayedRemovalArray.size) {
                Modifier modifier = delayedRemovalArray.items[i3];
                if (modifier.getTile().getX() >= i - 1 && modifier.getTile().getX() <= i + 1 && modifier.getTile().getY() >= i2 - 1 && modifier.getTile().getY() <= i2 + 1) {
                    modifier.nearbyBuildingsChanged();
                }
                i3++;
            } else {
                return;
            }
        }
    }

    /* renamed from: f */
    public final void m20932f(Modifier modifier) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (!modifier.isRegistered()) {
            int[] iArr = this.f11648b;
            int ordinal = modifier.type.ordinal();
            iArr[ordinal] = iArr[ordinal] + 1;
            int i = this.f11647a;
            this.f11647a = i + 1;
            modifier.f8773id = i;
            modifier.setRegistered(this.f8844S);
            this.modifiers.add(modifier);
            this.f11649d.add(modifier, 0.1f);
            return;
        }
        throw new IllegalArgumentException("Modifier is already registered");
    }

    /* renamed from: g */
    public final void m20931g(Modifier modifier) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (modifier.isRegistered()) {
            int[] iArr = this.f11648b;
            int ordinal = modifier.type.ordinal();
            iArr[ordinal] = iArr[ordinal] - 1;
            modifier.setUnregistered();
            this.modifiers.removeValue(modifier, true);
            this.f11649d.remove(modifier);
            return;
        }
        throw new IllegalArgumentException("Modifier is not registered");
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.modifiers = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.modifiersBuiltByType = (int[]) kryo.readObject(input, int[].class);
        this.modifiersBuiltByTypeAllTime = (int[]) kryo.readObject(input, int[].class);
        this.modifiersSoldByTypeAllTime = (int[]) kryo.readObject(input, int[].class);
        this.f11647a = input.readVarInt(true);
        this.f11648b = (int[]) kryo.readObject(input, int[].class);
        this.f11649d = (ScheduledUpdater) kryo.readObject(input, ScheduledUpdater.class);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
        this.f11650k = (ModifierProcessor[]) kryo.readObject(input, ModifierProcessor[].class);
        this.f11651p = (ScheduledUpdater) kryo.readObject(input, ScheduledUpdater.class);
    }

    public void sellModifier(Modifier modifier) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        int sellPrice = modifier.getSellPrice();
        if (!modifier.isSellAvailable()) {
            sellPrice = (int) (sellPrice * 0.75f);
        }
        if (sellPrice > 0) {
            this.f8844S.gameState.addMoney(sellPrice, false);
        }
        this.f8844S.map.removeBuilding(modifier);
        int[] iArr = this.modifiersSoldByTypeAllTime;
        int ordinal = modifier.type.ordinal();
        iArr[ordinal] = iArr[ordinal] + 1;
        int[] iArr2 = this.modifiersBuiltByType;
        int ordinal2 = modifier.type.ordinal();
        iArr2[ordinal2] = iArr2[ordinal2] - 1;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).modifierSold(modifier, sellPrice);
        }
        this.listeners.end();
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        ModifierType[] modifierTypeArr;
        ModifierProcessor[] modifierProcessorArr;
        GameSystemProvider gameSystemProvider = this.f8844S;
        gameSystemProvider.map.listeners.add(new _MapSystemListener(gameSystemProvider));
        for (ModifierType modifierType : ModifierType.values) {
            this.f11650k[modifierType.ordinal()] = Game.f8589i.modifierManager.getFactory(modifierType).createProcessor();
        }
        for (ModifierProcessor modifierProcessor : this.f11650k) {
            if (modifierProcessor != null) {
                if (modifierProcessor.getUpdateInterval() != 0.0f) {
                    this.f11651p.add(modifierProcessor, modifierProcessor.getUpdateInterval());
                }
                modifierProcessor.setRegistered(this.f8844S);
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        Building building;
        Building building2;
        StateSystem.ActionsArray currentUpdateActions = this.f8844S.gameState.getCurrentUpdateActions();
        if (currentUpdateActions != null) {
            for (int i = 0; i < currentUpdateActions.size; i++) {
                Action action = currentUpdateActions.actions[i];
                if (action.getType() == ActionType.BMO) {
                    BuildModifierAction buildModifierAction = (BuildModifierAction) action;
                    buildModifier(buildModifierAction.modifierType, buildModifierAction.f9071x, buildModifierAction.f9072y);
                } else if (action.getType() == ActionType.SMO) {
                    SellModifierAction sellModifierAction = (SellModifierAction) action;
                    Tile tile = this.f8844S.map.getMap().getTile(sellModifierAction.f9096x, sellModifierAction.f9097y);
                    if (tile != null && tile.type == TileType.PLATFORM && (building2 = ((PlatformTile) tile).building) != null && building2.buildingType == BuildingType.MODIFIER) {
                        sellModifier((Modifier) building2);
                    }
                } else if (action.getType() == ActionType.CMB) {
                    CustomModifierButtonAction customModifierButtonAction = (CustomModifierButtonAction) action;
                    Tile tile2 = this.f8844S.map.getMap().getTile(customModifierButtonAction.f9086x, customModifierButtonAction.f9087y);
                    if (tile2 != null && tile2.type == TileType.PLATFORM && (building = ((PlatformTile) tile2).building) != null && building.buildingType == BuildingType.MODIFIER) {
                        Modifier modifier = (Modifier) building;
                        if (modifier.hasCustomButton()) {
                            modifier.customButtonAction(customModifierButtonAction.mapX, customModifierButtonAction.mapY);
                            this.listeners.begin();
                            int size = this.listeners.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                this.listeners.get(i2).customButtonPressed(modifier);
                            }
                            this.listeners.end();
                        }
                    }
                }
            }
        }
        this.modifiers.begin();
        int i3 = this.modifiers.size;
        for (int i4 = 0; i4 < i3; i4++) {
            this.modifiers.items[i4].update(f);
        }
        this.modifiers.end();
        this.f11651p.process(f);
    }

    public ModifierSystem() {
        ModifierType[] modifierTypeArr = ModifierType.values;
        this.modifiersBuiltByType = new int[modifierTypeArr.length];
        this.modifiersBuiltByTypeAllTime = new int[modifierTypeArr.length];
        this.modifiersSoldByTypeAllTime = new int[modifierTypeArr.length];
        this.f11647a = 1;
        this.f11648b = new int[modifierTypeArr.length];
        this.f11649d = new ScheduledUpdater();
        this.listeners = new ListenerGroup<>(ModifierSystemListener.class);
        this.f11650k = new ModifierProcessor[ModifierType.values.length];
        this.f11651p = new ScheduledUpdater();
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.modifiers);
        kryo.writeObject(output, this.modifiersBuiltByType);
        kryo.writeObject(output, this.modifiersBuiltByTypeAllTime);
        kryo.writeObject(output, this.modifiersSoldByTypeAllTime);
        output.writeVarInt(this.f11647a, true);
        kryo.writeObject(output, this.f11648b);
        kryo.writeObject(output, this.f11649d);
        kryo.writeObject(output, this.listeners);
        kryo.writeObject(output, this.f11650k);
        kryo.writeObject(output, this.f11651p);
    }

    public void buildModifierAction(ModifierType modifierType, int i, int i2) {
        PlatformTile platformTile;
        Building building;
        Array<Tile> neighbourTiles = ((PlatformTile) this.f8844S.map.getMap().getTile(i, i2)).getNeighbourTiles();
        boolean z = true;
        for (int i3 = 0; i3 < neighbourTiles.size; i3++) {
            Tile tile = neighbourTiles.items[i3];
            if (tile.type == TileType.PLATFORM && (building = (platformTile = (PlatformTile) tile).building) != null && building.buildingType == BuildingType.MODIFIER && !Game.f8589i.modifierManager.getFactory(modifierType).canBePlacedNear(((Modifier) platformTile.building).type)) {
                z = false;
            }
        }
        if (z) {
            if (this.f8844S.gameState.getMoney() >= getBuildPrice(modifierType)) {
                this.f8844S.gameState.pushAction(new BuildModifierAction(modifierType, i, i2));
                return;
            }
            return;
        }
        Game game = Game.f8589i;
        game.uiManager.notifications.add(game.localeManager.i18n.get("modifier_cant_be_placed_near_other"), null, null, null);
    }
}
