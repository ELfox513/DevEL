package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class UnitSystem extends GameSystem {

    /* renamed from: b */
    public static final Array<SpawnTile> f11826b = new Array<>();

    /* renamed from: a */
    public int f11827a = 1;
    public ListenerGroup<UnitSystemListener> listeners = new ListenerGroup<>(UnitSystemListener.class);

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface UnitSystemListener extends GameListener {
        void unitDie(Unit unit, Enemy enemy);
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public void drawFlying(SpriteBatch spriteBatch, float f, float f2) {
        Tile tile;
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        this.f8844S.map.spawnedUnits.begin();
        int i = this.f8844S.map.spawnedUnits.size;
        for (int i2 = 0; i2 < i; i2++) {
            Unit unit = this.f8844S.map.spawnedUnits.items[i2];
            if (unit.setUpByUnitSystem && unit.drawOverEnemies && ((tile = unit.currentTile) == null || tile.visibleOnScreen)) {
                unit.applyDrawInterpolation(f2);
                unit.drawBatch(spriteBatch, f);
            }
        }
        this.f8844S.map.spawnedUnits.end();
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_UNITS_BBOX) != 0.0d) {
            spriteBatch.end();
            Game.f8589i.renderingManager.shapeRenderer.setProjectionMatrix(spriteBatch.getProjectionMatrix());
            Game.f8589i.renderingManager.shapeRenderer.begin(ShapeRenderer.ShapeType.Line);
            Game.f8589i.renderingManager.shapeRenderer.setColor(MaterialColor.CYAN.P500.cpy());
            Game.f8589i.renderingManager.shapeRenderer.getColor().f3889a = 0.5f;
            int i3 = this.f8844S.map.spawnedUnits.size;
            for (int i4 = 0; i4 < i3; i4++) {
                Unit unit2 = this.f8844S.map.spawnedUnits.items[i4];
                if (unit2.setUpByUnitSystem) {
                    ShapeRenderer shapeRenderer = Game.f8589i.renderingManager.shapeRenderer;
                    Vector2 vector2 = unit2.position;
                    shapeRenderer.circle(vector2.f5527x, vector2.f5528y, unit2.getSize());
                }
            }
            Game.f8589i.renderingManager.shapeRenderer.end();
            spriteBatch.begin();
        }
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    public void drawGrounded(SpriteBatch spriteBatch, float f, float f2) {
        Tile tile;
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
        this.f8844S.map.spawnedUnits.begin();
        int i = this.f8844S.map.spawnedUnits.size;
        for (int i2 = 0; i2 < i; i2++) {
            Unit unit = this.f8844S.map.spawnedUnits.items[i2];
            if (unit.setUpByUnitSystem && !unit.drawOverEnemies && ((tile = unit.currentTile) == null || tile.visibleOnScreen)) {
                unit.applyDrawInterpolation(f2);
                unit.drawBatch(spriteBatch, f);
            }
        }
        this.f8844S.map.spawnedUnits.end();
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Unit";
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
    }

    /* renamed from: a */
    public final void m20872a(Unit unit) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        unit.setUnregistered();
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.listeners.clear();
        f11826b.clear();
        super.dispose();
    }

    public void killUnit(Unit unit, Enemy enemy) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            ParticleEffectPool.PooledEffect breakParticle = Game.f8589i.unitManager.getFactory(unit.type).getBreakParticle();
            Vector2 vector2 = unit.position;
            breakParticle.setPosition(vector2.f5527x, vector2.f5528y);
            ParticleSystem particleSystem = this.f8844S._particle;
            LimitedParticleType limitedParticleType = LimitedParticleType.UNIT_DEAD;
            Vector2 vector22 = unit.position;
            particleSystem.addParticle(breakParticle, limitedParticleType, vector22.f5527x, vector22.f5528y);
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).unitDie(unit, enemy);
        }
        this.listeners.end();
        m20872a(unit);
    }

    public boolean preparePathToRandomSpawn(Unit unit, Tile tile) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Array<SpawnTile> array = f11826b;
        array.clear();
        array.addAll(this.f8844S.map.getMap().spawnTiles);
        for (int i = array.size - 1; i >= 0; i--) {
            int randomInt = this.f8844S.gameState.randomInt(i + 1);
            Array<SpawnTile> array2 = f11826b;
            array2.set(i, array2.get(randomInt));
            array2.set(randomInt, array2.get(i));
        }
        int i2 = 0;
        while (true) {
            Array<SpawnTile> array3 = f11826b;
            if (i2 < array3.size) {
                SpawnTile spawnTile = array3.get(i2);
                unit.graphPath.clear();
                if (this.f8844S.map.getMap().findPath(unit.graphPath, tile, spawnTile)) {
                    unit.startingTile = tile;
                    unit.targetTile = spawnTile;
                    unit.sideShiftIndex = 5;
                    array3.clear();
                    unit.angle = unit.graphPath.getRotation(unit.passedTiles, unit.sideShiftIndex);
                    unit.position.set(unit.graphPath.getPosition(unit.passedTiles, unit.sideShiftIndex));
                    unit.applyDrawInterpolation(0.0f);
                    return true;
                }
                i2++;
            } else {
                array3.clear();
                return false;
            }
        }
    }

    public void register(Unit unit) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        int i = this.f11827a;
        unit.f8948id = i;
        this.f11827a = i + 1;
        unit.setRegistered(this.f8844S);
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        this.f8844S.map.spawnedUnits.begin();
        int i = this.f8844S.map.spawnedUnits.size;
        for (int i2 = 0; i2 < i; i2++) {
            Unit unit = this.f8844S.map.spawnedUnits.items[i2];
            unit.setUpByUnitSystem = true;
            if (unit.staticPosition) {
                updateUnitCurrentTile(unit);
                unit.update(f);
            } else {
                float passedTilesDelta = unit.passedTiles + unit.getPassedTilesDelta(f);
                unit.passedTiles = passedTilesDelta;
                if (passedTilesDelta >= unit.graphPath.getLengthInTiles()) {
                    killUnit(unit, null);
                } else {
                    float f2 = unit.passedTiles;
                    if (f2 >= -0.5f) {
                        unit.angle = unit.graphPath.getRotation(f2, unit.sideShiftIndex);
                        unit.position.set(unit.graphPath.getPosition(unit.passedTiles, unit.sideShiftIndex));
                        updateUnitCurrentTile(unit);
                        unit.update(f);
                    } else {
                        Logger.error("UnitSystem", unit.passedTiles + " passed tiles");
                        this.f8844S.map.m20958h(unit);
                    }
                }
            }
        }
        this.f8844S.map.spawnedUnits.end();
    }

    public void updateUnitCurrentTile(Unit unit) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Map map = this.f8844S.map.getMap();
        Vector2 vector2 = unit.position;
        Tile tileByMapPos = map.getTileByMapPos(vector2.f5527x, vector2.f5528y);
        Tile tile = unit.currentTile;
        if (tile != tileByMapPos) {
            if (tile != null) {
                tile.unregisterUnit(unit);
            }
            if (tileByMapPos != null) {
                tileByMapPos.registerUnit(unit);
            } else {
                unit.currentTile = null;
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11827a = input.readVarInt(true);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f11827a, true);
        kryo.writeObject(output, this.listeners);
    }
}
