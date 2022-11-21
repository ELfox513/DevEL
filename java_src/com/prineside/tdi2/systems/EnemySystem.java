package com.prineside.tdi2.systems;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.luaj.lib.jse.CoerceJavaToLua;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Path;
import com.prineside.tdi2.PathNode;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.ScriptManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.ScriptProxyCreator;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
@REGS
/* loaded from: classes2.dex */
public class EnemySystem extends GameSystem {
    public static final int MIDDLE_SIDE_SHIFT = 5;
    public static final int RANDOM_SIDE_SHIFT = -1;

    /* renamed from: w */
    public static final Comparator<Enemy.EnemyReference> f11433w = new Comparator() { // from class: com.prineside.tdi2.systems.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m21046d;
            m21046d = EnemySystem.m21046d((Enemy.EnemyReference) obj, (Enemy.EnemyReference) obj2);
            return m21046d;
        }
    };

    /* renamed from: x */
    public static final Array<Enemy.EnemyReference> f11434x = new Array<>(false, 64, Enemy.EnemyReference.class);

    /* renamed from: a */
    public ScheduledUpdater f11435a;

    /* renamed from: b */
    public DelayedRemovalArray<Enemy.EnemyReference> f11436b;

    /* renamed from: d */
    public int f11437d;
    public float[][] enemyBuffVulnerability;
    public boolean[][] enemyDamageVulnerability;
    public boolean[][] enemySpecialDamageVulnerability;
    public boolean[] flyingEnemy;

    /* renamed from: k */
    public IntArray f11438k;
    public float lastDamageGiven;
    public ListenerGroup<EnemySystemListener> listeners;

    /* renamed from: p */
    public DpsCounter[] f11439p;

    /* renamed from: q */
    public double f11440q;
    @NAGS

    /* renamed from: r */
    public boolean f11441r;
    @NAGS

    /* renamed from: s */
    public double[] f11442s;
    @NAGS

    /* renamed from: t */
    public int f11443t;

    /* renamed from: u */
    public Enemy.EnemyReference[] f11444u;

    /* renamed from: v */
    public _MapListener f11445v;

    /* loaded from: classes2.dex */
    public static class DBG_DamageParticle implements Pool.Poolable {

        /* renamed from: a */
        public float f11446a;

        /* renamed from: b */
        public float f11447b;

        /* renamed from: d */
        public float f11448d;

        /* renamed from: k */
        public float f11449k;

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f11446a = 0.0f;
            this.f11447b = 0.0f;
            this.f11448d = 0.0f;
            this.f11449k = 0.0f;
        }
    }

    @REGS(arrayLevels = 1)
    /* loaded from: classes2.dex */
    public static class DpsCounter implements KryoSerializable {
        public double damage;
        public double maxDamage;
        public float timeAccumulator;

        public DpsCounter() {
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeDouble(this.damage);
            output.writeFloat(this.timeAccumulator);
            output.writeDouble(this.maxDamage);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.damage = input.readDouble();
            this.timeAccumulator = input.readFloat();
            this.maxDamage = input.readDouble();
        }
    }

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface EnemySystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class EnemySystemListenerAdapter implements EnemySystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            }

            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile) {
                return false;
            }

            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public void enemyTakeDamage(Enemy enemy, float f, Tower tower, DamageType damageType, Projectile projectile) {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public void mdpsUpdated(double d) {
            }
        }

        @REGS
        /* loaded from: classes2.dex */
        public static class ListenerScriptProxy implements EnemySystemListener, KryoSerializable {

            /* renamed from: a */
            public LuaValue f11450a;

            static {
                ObjectMap<String, ScriptProxyCreator> objectMap = ScriptManager.SCRIPT_PROXIES;
                objectMap.put(EnemySystem.class.getName() + "$EnemySystemListener", new ScriptProxyCreator() { // from class: com.prineside.tdi2.systems.b
                    @Override // com.prineside.tdi2.utils.ScriptProxyCreator
                    public final Object get(LuaValue luaValue) {
                        Object m21042b;
                        m21042b = EnemySystem.EnemySystemListener.ListenerScriptProxy.m21042b(luaValue);
                        return m21042b;
                    }
                });
            }

            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return true;
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 100;
            }

            @Override // com.esotericsoftware.kryo.KryoSerializable
            public void read(Kryo kryo, Input input) {
                this.f11450a = (LuaValue) kryo.readClassAndObject(input);
            }

            @Override // com.esotericsoftware.kryo.KryoSerializable
            public void write(Kryo kryo, Output output) {
                kryo.writeClassAndObject(output, this.f11450a);
            }

            /* renamed from: b */
            public static /* synthetic */ Object m21042b(LuaValue luaValue) {
                ListenerScriptProxy listenerScriptProxy = new ListenerScriptProxy();
                listenerScriptProxy.f11450a = luaValue;
                return listenerScriptProxy;
            }

            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
                LuaValue luaValue = this.f11450a.get("enemyDie");
                if (!luaValue.isnil()) {
                    luaValue.invoke(LuaValue.cachedVarargsOf(CoerceJavaToLua.coerce(enemy), CoerceJavaToLua.coerce(tower), CoerceJavaToLua.coerce(damageType), CoerceJavaToLua.coerce(ability), CoerceJavaToLua.coerce(projectile)));
                }
            }

            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile) {
                LuaValue luaValue = this.f11450a.get("enemyReachedTarget");
                if (!luaValue.isnil()) {
                    Varargs invoke = luaValue.invoke(LuaValue.cachedVarargsOf(CoerceJavaToLua.coerce(enemy), LuaValue.cachedInt(i), CoerceJavaToLua.coerce(targetTile)));
                    if (invoke.arg1().isboolean()) {
                        return invoke.arg1().toboolean();
                    }
                    return false;
                }
                return false;
            }

            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public void enemyTakeDamage(Enemy enemy, float f, Tower tower, DamageType damageType, Projectile projectile) {
                LuaValue luaValue = this.f11450a.get("enemyTakeDamage");
                if (!luaValue.isnil()) {
                    luaValue.invoke(LuaValue.cachedVarargsOf(CoerceJavaToLua.coerce(enemy), LuaValue.cachedDouble(f), CoerceJavaToLua.coerce(tower), CoerceJavaToLua.coerce(damageType), CoerceJavaToLua.coerce(projectile)));
                }
            }

            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public void mdpsUpdated(double d) {
                LuaValue luaValue = this.f11450a.get("mdpsUpdated");
                if (!luaValue.isnil()) {
                    luaValue.invoke(LuaValue.cachedVarargsOf(LuaValue.cachedDouble(d)));
                }
            }
        }

        void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile);

        boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile);

        void enemyTakeDamage(Enemy enemy, float f, Tower tower, DamageType damageType, Projectile projectile);

        void mdpsUpdated(double d);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _MapListener implements Map.MapListener, KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11451a;

        @Deprecated
        public _MapListener() {
        }

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 246541000;
        }

        @Override // com.prineside.tdi2.Map.MapListener
        public void pathfindingRebuilt(boolean z) {
            if (z) {
                this.f11451a.enemy.queueAllEnemiesPathfinding();
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11451a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11451a, GameSystemProvider.class);
        }

        public _MapListener(GameSystemProvider gameSystemProvider) {
            this.f11451a = gameSystemProvider;
        }
    }

    public void addEnemy(Enemy enemy, Tile tile, int i) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        enemy.spawnTile = this.f8844S.map.getMap().spawnTiles.first();
        enemy.wave = null;
        enemy.graphPath = new Path();
        this.f8844S.map.getMap().findPath(enemy, enemy.graphPath, tile);
        register(enemy, enemy.graphPath, i, 0.0f);
        this.f8844S.loot.fillWithLoot(enemy);
        this.f8844S.map.spawnEnemy(enemy);
        tile.registerEnemy(enemy);
        enemy.setPositionToPath();
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    /* renamed from: c */
    public final int m21047c() {
        return this.f8844S.gameState.randomInt(11);
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Enemy";
    }

    public double getTowersMaxDps() {
        return this.f11440q;
    }

    public boolean giveDamage(Enemy enemy, Tower tower, float f, DamageType damageType, Ability ability, boolean z, Projectile projectile) {
        float f2;
        TowerType towerType;
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (ability != null && Game.f8589i.enemyManager.getMainEnemyType(enemy.type) == EnemyType.BOSS) {
            f2 = 0.075f * f;
        } else {
            f2 = f;
        }
        float giveDamage = enemy.giveDamage(tower, f2, damageType);
        this.lastDamageGiven = giveDamage;
        if (tower != null) {
            tower.damageGiven += giveDamage;
        }
        if (tower != null && ability == null && z) {
            for (int i = 0; i < 10; i++) {
                DpsCounter dpsCounter = this.f11439p[i];
                double d = dpsCounter.damage;
                double d2 = giveDamage;
                Double.isNaN(d2);
                dpsCounter.damage = d + d2;
            }
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.listeners.get(i2).enemyTakeDamage(enemy, giveDamage, tower, damageType, projectile);
        }
        this.listeners.end();
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DAMAGE_PARTICLES_ENABLED) != 0.0d && Game.f8589i.settingsManager.isParticlesDrawing()) {
            if (tower == null) {
                towerType = null;
            } else {
                towerType = tower.type;
            }
            this.f8844S._particle.addDamageParticle(enemy.getPosition().f5527x, enemy.getPosition().f5528y, (int) giveDamage, enemy.getBuffedDamageMultiplier(towerType, damageType));
        }
        if (enemy.getHealth() <= 0.0f) {
            enemy.onPreDie();
            killEnemy(enemy, tower, damageType, ability, projectile);
            return true;
        }
        if (tower != null && tower.getTile() != null && damageType == DamageType.BULLET && this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            this.f8844S._particle.addEnemyHitParticle(tower, enemy, f2, projectile);
        }
        return false;
    }

    public boolean isEmojiEnemies() {
        return this.f11441r;
    }

    public void register(Enemy enemy) {
        register(enemy, m21047c());
    }

    /* renamed from: d */
    public static /* synthetic */ int m21046d(Enemy.EnemyReference enemyReference, Enemy.EnemyReference enemyReference2) {
        float lengthInTiles;
        Path path = enemyReference.enemy.graphPath;
        float f = 0.0f;
        if (path == null) {
            lengthInTiles = 0.0f;
        } else {
            lengthInTiles = path.getLengthInTiles() - enemyReference.enemy.passedTiles;
        }
        Path path2 = enemyReference2.enemy.graphPath;
        if (path2 != null) {
            f = path2.getLengthInTiles() - enemyReference2.enemy.passedTiles;
        }
        return Float.compare(lengthInTiles, f);
    }

    public void addStaticEnemy(Enemy enemy, float f, float f2) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        enemy.spawnTile = this.f8844S.map.getMap().spawnTiles.first();
        enemy.wave = null;
        register(enemy, enemy.graphPath, 5, 0.0f);
        this.f8844S.map.spawnEnemy(enemy);
        enemy.setPosition(f, f2);
    }

    /* renamed from: b */
    public final void m21048b() {
        String format = new SimpleDateFormat("dd/MM", Locale.US).format(new Date());
        if (this.f8844S.gameValue.getBooleanValue(GameValueType.EMOJI_ENEMIES) || format.equals("01/04")) {
            this.f11441r = true;
        }
    }

    public void despawnEnemy(Enemy enemy) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        this.f8844S.map.despawnEnemy(enemy);
        m21044f(enemy);
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (this.f11445v != null) {
            this.f8844S.map.getMap().listeners.remove(this.f11445v);
        }
        this.listeners.clear();
        this.f11436b.clear();
        this.f11435a.clear();
        Game.f8589i.debugManager.unregisterValue("Towers MDPS");
        super.dispose();
    }

    public void draw(SpriteBatch spriteBatch, float f, float f2) {
        int i;
        Building building;
        int i2;
        int i3;
        int i4;
        BitmapFont bitmapFont;
        float f3 = 0.0f;
        if (f2 >= 0.0f) {
            f3 = f2;
        }
        if (f3 > 1.0f) {
            f3 = 1.0f;
        }
        spriteBatch.setColor(Color.WHITE);
        Array<Enemy.EnemyReference> array = f11434x;
        array.clear();
        array.addAll(this.f8844S.map.spawnedEnemies);
        array.sort(f11433w);
        int i5 = 0;
        while (true) {
            Array<Enemy.EnemyReference> array2 = f11434x;
            i = array2.size;
            if (i5 >= i) {
                break;
            }
            array2.items[i5].enemy.applyDrawInterpolation(f3);
            i5++;
        }
        for (int i6 = i - 1; i6 >= 0; i6--) {
            Enemy enemy = f11434x.items[i6].enemy;
            if (enemy.setUpByEnemySystem && !enemy.hasDrawPriority() && enemy.visible && enemy.getCurrentTile().visibleOnScreen) {
                enemy.drawBatch(spriteBatch, f);
            }
        }
        for (int i7 = f11434x.size - 1; i7 >= 0; i7--) {
            Enemy enemy2 = f11434x.items[i7].enemy;
            if (enemy2.setUpByEnemySystem && enemy2.getCurrentTile().visibleOnScreen && enemy2.hasDrawPriority() && enemy2.visible) {
                enemy2.drawBatch(spriteBatch, f);
            }
        }
        if (Game.f8589i.settingsManager.isParticlesDrawing()) {
            spriteBatch.flush();
            spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
            for (int i8 = f11434x.size - 1; i8 >= 0; i8--) {
                Enemy enemy3 = f11434x.items[i8].enemy;
                if (enemy3.setUpByEnemySystem && enemy3.getCurrentTile().visibleOnScreen && enemy3.visible) {
                    enemy3.drawBatchAdditive(spriteBatch, f);
                }
            }
            spriteBatch.flush();
            spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_ENEMIES_INFO) != 0.0d) {
            BitmapFont debugFont = Game.f8589i.assetManager.getDebugFont(false);
            int intValue = this.f8844S.gameValue.getIntValue(GameValueType.ENEMIES_MAX_PATH_SEARCHES);
            debugFont.setColor(MaterialColor.BLUE.P500);
            int i9 = f11434x.size;
            int i10 = 0;
            while (i10 < i9) {
                Enemy enemy4 = f11434x.items[i10].enemy;
                if (enemy4.setUpByEnemySystem) {
                    i2 = i10;
                    i3 = i9;
                    i4 = intValue;
                    bitmapFont = debugFont;
                    debugFont.draw(spriteBatch, "I:" + (StrictMath.round(enemy4.passedTiles * 100.0f) / 100.0f) + " S:" + (StrictMath.round(enemy4.getBuffedSpeed() * 100.0f) * 0.01f) + " PS: " + enemy4.pathSearches + "/" + intValue, enemy4.getPosition().f5527x - 50.0f, enemy4.getPosition().f5528y + 30.0f, 100.0f, 1, false);
                } else {
                    i2 = i10;
                    i3 = i9;
                    i4 = intValue;
                    bitmapFont = debugFont;
                }
                i10 = i2 + 1;
                debugFont = bitmapFont;
                i9 = i3;
                intValue = i4;
            }
            debugFont.setColor(Color.WHITE);
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_UNITS_BBOX) != 0.0d) {
            spriteBatch.end();
            Game.f8589i.renderingManager.shapeRenderer.setProjectionMatrix(spriteBatch.getProjectionMatrix());
            Game.f8589i.renderingManager.shapeRenderer.begin(ShapeRenderer.ShapeType.Line);
            Game.f8589i.renderingManager.shapeRenderer.setColor(MaterialColor.ORANGE.P500.cpy());
            Game.f8589i.renderingManager.shapeRenderer.getColor().f3889a = 0.5f;
            int i11 = f11434x.size;
            for (int i12 = 0; i12 < i11; i12++) {
                Enemy enemy5 = f11434x.items[i12].enemy;
                if (enemy5.setUpByEnemySystem) {
                    Game.f8589i.renderingManager.shapeRenderer.circle(enemy5.getPosition().f5527x, enemy5.getPosition().f5528y, enemy5.getSize());
                }
            }
            Game.f8589i.renderingManager.shapeRenderer.end();
            spriteBatch.begin();
        }
        if (this.f11442s != null) {
            spriteBatch.end();
            Game game = Game.f8589i;
            game.renderingManager.shapeRenderer.setProjectionMatrix(game.uiManager.viewport.getCamera().projection);
            Game.f8589i.renderingManager.shapeRenderer.begin(ShapeRenderer.ShapeType.Filled);
            Game.f8589i.renderingManager.shapeRenderer.setColor(MaterialColor.ORANGE.P500.cpy());
            Game.f8589i.renderingManager.shapeRenderer.getColor().f3889a = 0.5f;
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            Gdx.f3119gl.glBlendFunc(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
            float f4 = (-Game.f8589i.uiManager.viewport.getWorldHeight()) * 0.5f;
            double d = 300.0d / this.f11440q;
            int i13 = this.f11443t;
            int i14 = 0;
            while (true) {
                double[] dArr = this.f11442s;
                if (i13 >= dArr.length) {
                    break;
                }
                Game.f8589i.renderingManager.shapeRenderer.rect((i14 * 3) - 450.0f, f4, 2.0f, (float) (dArr[i13] * d));
                i14++;
                i13++;
            }
            for (int i15 = 0; i15 < this.f11443t; i15++) {
                Game.f8589i.renderingManager.shapeRenderer.rect((i14 * 3) - 450.0f, f4, 2.0f, (float) (this.f11442s[i15] * d));
                i14++;
            }
            Game.f8589i.renderingManager.shapeRenderer.end();
            spriteBatch.begin();
        }
        spriteBatch.setColor(Color.WHITE);
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_ENEMY_PATHS) != 0.0d) {
            spriteBatch.end();
            Game.f8589i.renderingManager.shapeRenderer.setProjectionMatrix(spriteBatch.getProjectionMatrix());
            Game.f8589i.renderingManager.shapeRenderer.begin(ShapeRenderer.ShapeType.Line);
            int i16 = f11434x.size;
            for (int i17 = 0; i17 < i16; i17++) {
                Enemy enemy6 = f11434x.items[i17].enemy;
                if (enemy6.setUpByEnemySystem) {
                    PathNode pathNode = null;
                    Iterator<PathNode> it = enemy6.graphPath.iterator();
                    while (it.hasNext()) {
                        PathNode next = it.next();
                        if (pathNode != null) {
                            Game.f8589i.renderingManager.shapeRenderer.line(pathNode.tileCenterX, pathNode.tileCenterY, next.tileCenterX, next.tileCenterY);
                        }
                        pathNode = next;
                    }
                }
            }
            Game.f8589i.renderingManager.shapeRenderer.end();
            spriteBatch.begin();
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_BUILDING_INFO) != 0.0d && this.f8844S.map.getSelectedTile() != null && this.f8844S.map.getSelectedTile().type == TileType.PLATFORM && (building = ((PlatformTile) this.f8844S.map.getSelectedTile()).building) != null && building.buildingType == BuildingType.TOWER) {
            Tower tower = (Tower) building;
            BitmapFont debugFont2 = Game.f8589i.assetManager.getDebugFont(false);
            int i18 = 0;
            while (true) {
                Array<Enemy.EnemyReference> array3 = f11434x;
                if (i18 >= array3.size) {
                    break;
                }
                Enemy enemy7 = array3.items[i18].enemy;
                int enemyPriority = tower.getEnemyPriority(enemy7);
                debugFont2.setColor(Color.RED);
                debugFont2.draw(spriteBatch, "P:" + enemyPriority, enemy7.getPosition().f5527x - 8.0f, enemy7.getPosition().f5528y, 16.0f, 1, false);
                i18++;
            }
            debugFont2.setColor(Color.WHITE);
        }
        f11434x.clear();
    }

    public void drawEnemyHealth(SpriteBatch spriteBatch, float f) {
        Array<Enemy.EnemyReference> array = f11434x;
        array.clear();
        array.addAll(this.f8844S.map.spawnedEnemies);
        array.sort(f11433w);
        spriteBatch.setColor(Color.WHITE);
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy enemy = f11434x.items[i2].enemy;
            if (enemy != null && enemy.setUpByEnemySystem && !enemy.hasDrawPriority() && enemy.getCurrentTile().visibleOnScreen && enemy.healthBarScale != 0.0f && !enemy.healthBarInvisible) {
                enemy.drawHealth(spriteBatch);
            }
        }
        int i3 = f11434x.size;
        for (int i4 = 0; i4 < i3; i4++) {
            Enemy enemy2 = f11434x.items[i4].enemy;
            if (enemy2 != null && enemy2.setUpByEnemySystem && enemy2.hasDrawPriority() && enemy2.getCurrentTile().visibleOnScreen && enemy2.healthBarScale != 0.0f && !enemy2.healthBarInvisible) {
                enemy2.drawHealth(spriteBatch);
            }
        }
        f11434x.clear();
        spriteBatch.setColor(Color.WHITE);
    }

    /* renamed from: e */
    public final void m21045e(Enemy enemy) {
        int i;
        if (enemy.f8552id == 0) {
            IntArray intArray = this.f11438k;
            if (intArray.size != 0) {
                intArray.sort();
                i = this.f11438k.removeIndex(0);
            } else {
                i = this.f11437d;
                this.f11437d = i + 1;
            }
            enemy.f8552id = i;
            Enemy.EnemyReference enemyReference = new Enemy.EnemyReference();
            enemyReference.enemy = enemy;
            Enemy.EnemyReference[] enemyReferenceArr = this.f11444u;
            if (i >= enemyReferenceArr.length) {
                Enemy.EnemyReference[] enemyReferenceArr2 = new Enemy.EnemyReference[MathUtils.nextPowerOfTwo(enemyReferenceArr.length + 1)];
                Enemy.EnemyReference[] enemyReferenceArr3 = this.f11444u;
                System.arraycopy(enemyReferenceArr3, 0, enemyReferenceArr2, 0, enemyReferenceArr3.length);
                this.f11444u = enemyReferenceArr2;
            }
            this.f11444u[enemy.f8552id] = enemyReference;
            return;
        }
        throw new IllegalArgumentException("Enemy " + enemy + " is already registered with id " + enemy.f8552id);
    }

    /* renamed from: f */
    public final void m21044f(Enemy enemy) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        Enemy.EnemyReference reference = getReference(enemy);
        enemy.setUnregistered();
        this.f11435a.remove(enemy);
        this.f11436b.removeValue(reference, true);
        reference.enemy = null;
        Enemy.EnemyReference[] enemyReferenceArr = this.f11444u;
        int i = enemy.f8552id;
        enemyReferenceArr[i] = null;
        this.f11438k.add(i);
        enemy.f8552id = 0;
        Game.f8589i.enemyManager.getFactory(enemy.type).free(enemy);
    }

    public Enemy.EnemyReference getReference(Enemy enemy) {
        if (enemy == null) {
            return Enemy.EnemyReference.NULL;
        }
        int i = enemy.f8552id;
        if (i != 0) {
            return this.f11444u[i];
        }
        throw new IllegalArgumentException("Enemy is not registered: " + enemy);
    }

    public void killEnemy(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
        TextureRegion texture;
        float f;
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            ParticleEffectPool.PooledEffect breakParticle = enemy.getBreakParticle();
            Vector2 vector2 = enemy.drawPosition;
            breakParticle.setPosition(vector2.f5527x, vector2.f5528y);
            ParticleSystem particleSystem = this.f8844S._particle;
            LimitedParticleType limitedParticleType = LimitedParticleType.ENEMY_DEAD;
            Vector2 vector22 = enemy.drawPosition;
            particleSystem.addParticle(breakParticle, limitedParticleType, vector22.f5527x, vector22.f5528y);
            if (this.f8844S.enemy.isEmojiEnemies()) {
                texture = enemy.getEmojiTexture();
                f = 0.0f;
            } else {
                texture = enemy.getTexture();
                f = enemy.drawAngle;
            }
            ParticleSystem particleSystem2 = this.f8844S._particle;
            Vector2 vector23 = enemy.drawPosition;
            particleSystem2.addShatterParticle(texture, vector23.f5527x, vector23.f5528y, texture.getRegionWidth(), f, enemy.drawScale);
        }
        this.f8844S.map.despawnEnemy(enemy);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).enemyDie(enemy, tower, damageType, ability, projectile);
        }
        this.listeners.end();
        m21044f(enemy);
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        this.f11445v = new _MapListener(this.f8844S);
        this.f8844S.map.getMap().listeners.add(this.f11445v);
        m21048b();
    }

    public void queueAllEnemiesPathfinding() {
        int intValue = this.f8844S.gameValue.getIntValue(GameValueType.ENEMIES_MAX_PATH_SEARCHES);
        this.f11436b.clear();
        int i = 0;
        while (true) {
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
            if (i < delayedRemovalArray.size) {
                Enemy.EnemyReference enemyReference = delayedRemovalArray.items[i];
                Enemy enemy = enemyReference.enemy;
                if (enemy != null && !enemy.ignorePathfinding && enemy.pathSearches < intValue && enemy.graphPath != null) {
                    this.f11436b.add(enemyReference);
                }
                i++;
            } else {
                return;
            }
        }
    }

    public void register(Enemy enemy, int i) {
        if (enemy.spawnTile != null) {
            this.f8844S.gameState.checkGameplayUpdateAllowed();
            m21045e(enemy);
            enemy.setRegistered(this.f8844S);
            this.f11435a.add(enemy, 0.1f);
            if (i == -1) {
                i = m21047c();
            }
            enemy.graphPath = this.f8844S.map.getMap().getNewPath(enemy.type, enemy.spawnTile);
            enemy.sideShiftIndex = i;
            return;
        }
        throw new IllegalArgumentException("Enemy must have spawnTile set");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        DpsCounter[] dpsCounterArr;
        Path path;
        int i;
        TargetTile targetTile;
        Tile tile;
        int i2;
        PathNode pathNode;
        Path.MoveSide moveSide;
        Path.MoveSide calculateMoveSides;
        float f2;
        this.f11435a.process(f);
        long realTickCount = Game.getRealTickCount();
        this.f11436b.begin();
        int i3 = this.f11436b.size;
        for (int i4 = 0; i4 < i3; i4++) {
            Enemy enemy = this.f11436b.items[i4].enemy;
            if (enemy != null && !enemy.disabled && enemy.dynamicPathfindingAllowed()) {
                if (enemy.passedTiles < -0.499999f) {
                    enemy.passedTiles = -0.499999f;
                }
                int i5 = (int) (enemy.passedTiles + 0.5f);
                float passedTilesDelta = enemy.getPassedTilesDelta(f);
                if (passedTilesDelta >= 0.0f && i5 != (i2 = (int) (enemy.passedTiles + 0.5f + passedTilesDelta))) {
                    if (enemy.graphPath.getCount() > i2) {
                        pathNode = enemy.graphPath.get(i2);
                    } else {
                        pathNode = null;
                    }
                    Tile tile2 = enemy.spawnTile;
                    if (enemy.setUpByEnemySystem) {
                        tile2 = enemy.getCurrentTile();
                        moveSide = enemy.graphPath.getMoveSide(enemy.passedTiles);
                        if (tile2 == null) {
                            throw new RuntimeException("Enemy is set up but its current tile is null (id: " + enemy.f8552id + ", passed " + enemy.passedTiles + " tiles)");
                        }
                    } else {
                        moveSide = null;
                    }
                    enemy.graphPath.clear();
                    this.f8844S.map.getMap().findPath(enemy, enemy.graphPath, tile2);
                    if (pathNode != null) {
                        if (enemy.graphPath.get(1).f8830x == pathNode.f8830x && enemy.graphPath.get(1).f8831y == pathNode.f8831y) {
                            enemy.graphPath.setMoveSide(0, moveSide);
                            enemy.passedTiles = enemy.passedTiles - ((int) f2);
                        } else {
                            try {
                                calculateMoveSides = Path.calculateMoveSides(enemy.graphPath.get(0), pathNode, enemy.graphPath.get(1));
                            } catch (Exception unused) {
                                calculateMoveSides = Path.calculateMoveSides(enemy.graphPath.get(0), null, enemy.graphPath.get(1));
                            }
                            enemy.graphPath.setMoveSide(0, calculateMoveSides);
                            enemy.passedTiles = -0.4999f;
                        }
                    }
                    enemy.pathSearches++;
                    this.f11436b.removeIndex(i4);
                    if (enemy.passedTiles < 0.0f) {
                        enemy.sideShiftIndex = (11 - enemy.sideShiftIndex) - 1;
                    }
                }
            } else {
                this.f11436b.removeIndex(i4);
            }
        }
        this.f11436b.end();
        Game.f8589i.debugManager.registerFrameJob("Pathfinding", Game.getRealTickCount() - realTickCount);
        EntityUtils.removeNullRefs(this.f8844S.map.spawnedEnemies);
        this.f8844S.map.spawnedEnemies.sort(f11433w);
        this.f8844S.map.spawnedEnemies.begin();
        int i6 = this.f8844S.map.spawnedEnemies.size;
        for (int i7 = 0; i7 < i6; i7++) {
            Enemy enemy2 = this.f8844S.map.spawnedEnemies.items[i7].enemy;
            if (enemy2 != null) {
                if (!enemy2.disabled && (path = enemy2.graphPath) != null) {
                    enemy2.setUpByEnemySystem = true;
                    float passedTilesDelta2 = enemy2.getPassedTilesDelta(f);
                    float f3 = enemy2.passedTiles + passedTilesDelta2;
                    enemy2.passedTiles = f3;
                    float f4 = enemy2.sumPassedTiles + passedTilesDelta2;
                    enemy2.sumPassedTiles = f4;
                    if (f3 < -0.49999f) {
                        enemy2.sumPassedTiles = f4 + ((-0.49999f) - f3);
                        enemy2.passedTiles = -0.49999f;
                    }
                    if (enemy2.passedTiles >= path.getLengthInTiles()) {
                        float baseDamage = enemy2.getBaseDamage();
                        if (baseDamage > 0.0f) {
                            float f5 = baseDamage % 1.0f;
                            if (f5 == 0.0f) {
                                i = MathUtils.round(baseDamage);
                            } else {
                                i = (int) baseDamage;
                                if (this.f8844S.gameState.randomFloat() < f5) {
                                    i++;
                                }
                            }
                        } else {
                            i = 0;
                        }
                        Path path2 = enemy2.graphPath;
                        PathNode pathNode2 = path2.get(path2.nodes.size - 1);
                        if (pathNode2 != null && (tile = this.f8844S.map.getMap().getTile(pathNode2.f8830x, pathNode2.f8831y)) != null && tile.type == TileType.TARGET) {
                            targetTile = (TargetTile) tile;
                        } else {
                            targetTile = null;
                        }
                        this.listeners.begin();
                        int size = this.listeners.size();
                        boolean z = false;
                        for (int i8 = 0; i8 < size; i8++) {
                            if (this.listeners.get(i8).enemyReachedTarget(enemy2, i, targetTile)) {
                                z = true;
                            }
                        }
                        this.listeners.end();
                        if (!z) {
                            this.f8844S.map.despawnEnemy(enemy2);
                            m21044f(enemy2);
                        } else {
                            enemy2.setPositionToPath();
                            enemy2.update(f);
                        }
                    } else if (enemy2.passedTiles >= -0.5f) {
                        enemy2.setPositionToPath();
                        if (enemy2.getCurrentTile() == null || ((int) (enemy2.getPosition().f5527x / 128.0f)) != enemy2.getCurrentTile().getX() || ((int) (enemy2.getPosition().f5528y / 128.0f)) != enemy2.getCurrentTile().getY()) {
                            updateEnemyCurrentTile(enemy2);
                        }
                        enemy2.update(f);
                    } else {
                        throw new IllegalStateException(enemy2.passedTiles + " passed tiles");
                    }
                } else {
                    enemy2.update(f);
                    updateEnemyCurrentTile(enemy2);
                    enemy2.setUpByEnemySystem = true;
                }
            }
        }
        this.f8844S.map.spawnedEnemies.end();
        double d = 0.0d;
        double d2 = 0.0d;
        for (DpsCounter dpsCounter : this.f11439p) {
            float f6 = dpsCounter.timeAccumulator + f;
            dpsCounter.timeAccumulator = f6;
            if (f6 > 10.0f) {
                double d3 = dpsCounter.damage;
                if (d3 > dpsCounter.maxDamage) {
                    dpsCounter.maxDamage = d3;
                }
                if (d2 < d3) {
                    d2 = d3;
                }
                dpsCounter.timeAccumulator = 0.0f;
                dpsCounter.damage = 0.0d;
            }
            double d4 = dpsCounter.maxDamage;
            if (d < d4) {
                d = d4;
            }
        }
        double d5 = d / 10.0d;
        double d6 = this.f11440q;
        if (d5 > d6) {
            this.f11440q = d5;
            this.listeners.begin();
            int size2 = this.listeners.size();
            for (int i9 = 0; i9 < size2; i9++) {
                this.listeners.get(i9).mdpsUpdated(d6);
            }
            this.listeners.end();
        }
        double[] dArr = this.f11442s;
        if (dArr != null) {
            double d7 = d2 / 10.0d;
            if (d7 > 0.0d) {
                int i10 = this.f11443t;
                int i11 = i10 + 1;
                this.f11443t = i11;
                dArr[i10] = d7;
                if (i11 == dArr.length) {
                    this.f11443t = 0;
                }
            }
        }
    }

    public void updateEnemyCurrentTile(Enemy enemy) {
        Tile tileByMapPos;
        Path path;
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        if (enemy.isRegistered()) {
            if (!enemy.disabled && (path = enemy.graphPath) != null) {
                PathNode pathNode = path.get(enemy.passedTiles);
                tileByMapPos = this.f8844S.map.getMap().getTile(pathNode.f8830x, pathNode.f8831y);
            } else {
                tileByMapPos = this.f8844S.map.getMap().getTileByMapPos(enemy.getPosition().f5527x, enemy.getPosition().f5528y);
            }
            if (tileByMapPos != null) {
                if (enemy.getCurrentTile() != tileByMapPos) {
                    if (enemy.getCurrentTile() != null) {
                        enemy.getCurrentTile().unregisterEnemy(enemy);
                    }
                    tileByMapPos.registerEnemy(enemy);
                    return;
                }
                return;
            }
            throw new RuntimeException("Enemy " + enemy + " is not on tile (" + enemy.getPosition().f5527x + "," + enemy.getPosition().f5528y + ")");
        }
        throw new IllegalArgumentException("Enemy is not registered");
    }

    public EnemySystem() {
        EnemyType[] enemyTypeArr = EnemyType.values;
        boolean[] zArr = new boolean[enemyTypeArr.length];
        this.flyingEnemy = zArr;
        zArr[EnemyType.HELI.ordinal()] = true;
        this.flyingEnemy[EnemyType.JET.ordinal()] = true;
        boolean[][] zArr2 = (boolean[][]) java.lang.reflect.Array.newInstance(Boolean.TYPE, enemyTypeArr.length, DamageType.values.length);
        this.enemyDamageVulnerability = zArr2;
        for (boolean[] zArr3 : zArr2) {
            Arrays.fill(zArr3, true);
        }
        this.enemyDamageVulnerability[EnemyType.ARMORED.ordinal()][DamageType.ELECTRICITY.ordinal()] = false;
        this.enemyDamageVulnerability[EnemyType.HEALER.ordinal()][DamageType.FIRE.ordinal()] = false;
        this.enemyDamageVulnerability[EnemyType.TOXIC.ordinal()][DamageType.POISON.ordinal()] = false;
        boolean[][] zArr4 = (boolean[][]) java.lang.reflect.Array.newInstance(Boolean.TYPE, EnemyType.values.length, SpecialDamageType.values.length);
        this.enemySpecialDamageVulnerability = zArr4;
        for (boolean[] zArr5 : zArr4) {
            Arrays.fill(zArr5, true);
        }
        boolean[] zArr6 = this.enemySpecialDamageVulnerability[EnemyType.BROOT_BOSS.ordinal()];
        SpecialDamageType specialDamageType = SpecialDamageType.KILLSHOT;
        zArr6[specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.CONSTRUCTOR_BOSS.ordinal()][specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.METAPHOR_BOSS.ordinal()][specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.METAPHOR_BOSS_CREEP.ordinal()][specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.MOBCHAIN_BOSS_HEAD.ordinal()][specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.MOBCHAIN_BOSS_BODY.ordinal()][specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.MOBCHAIN_BOSS_CREEP.ordinal()][specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.SNAKE_BOSS_HEAD.ordinal()][specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.SNAKE_BOSS_BODY.ordinal()][specialDamageType.ordinal()] = false;
        this.enemySpecialDamageVulnerability[EnemyType.SNAKE_BOSS_TAIL.ordinal()][specialDamageType.ordinal()] = false;
        float[][] fArr = (float[][]) java.lang.reflect.Array.newInstance(Float.TYPE, EnemyType.values.length, BuffType.values.length);
        this.enemyBuffVulnerability = fArr;
        for (float[] fArr2 : fArr) {
            Arrays.fill(fArr2, 1.0f);
        }
        float[] fArr3 = this.enemyBuffVulnerability[EnemyType.HEALER.ordinal()];
        BuffType buffType = BuffType.BURN;
        fArr3[buffType.ordinal()] = 0.0f;
        this.enemyBuffVulnerability[EnemyType.TOXIC.ordinal()][BuffType.POISON.ordinal()] = 0.0f;
        this.enemyBuffVulnerability[EnemyType.ICY.ordinal()][buffType.ordinal()] = 1.5f;
        float[][] fArr4 = this.enemyBuffVulnerability;
        EnemyType enemyType = EnemyType.BROOT_BOSS;
        float[] fArr5 = fArr4[enemyType.ordinal()];
        BuffType buffType2 = BuffType.STUN;
        fArr5[buffType2.ordinal()] = 0.0f;
        float[] fArr6 = this.enemyBuffVulnerability[enemyType.ordinal()];
        BuffType buffType3 = BuffType.FREEZING;
        fArr6[buffType3.ordinal()] = 0.0f;
        this.enemyBuffVulnerability[enemyType.ordinal()][BuffType.BLIZZARD.ordinal()] = 0.0f;
        float[] fArr7 = this.enemyBuffVulnerability[enemyType.ordinal()];
        BuffType buffType4 = BuffType.SNOWBALL;
        fArr7[buffType4.ordinal()] = 0.0f;
        float[][] fArr8 = this.enemyBuffVulnerability;
        EnemyType enemyType2 = EnemyType.CONSTRUCTOR_BOSS;
        fArr8[enemyType2.ordinal()][buffType2.ordinal()] = 0.0f;
        this.enemyBuffVulnerability[enemyType2.ordinal()][buffType3.ordinal()] = 0.0f;
        this.enemyBuffVulnerability[enemyType2.ordinal()][BuffType.THROW_BACK.ordinal()] = 0.0f;
        this.enemyBuffVulnerability[enemyType2.ordinal()][buffType4.ordinal()] = 0.0f;
        EnemyType[] enemyTypeArr2 = {EnemyType.METAPHOR_BOSS, EnemyType.METAPHOR_BOSS_CREEP};
        for (int i = 0; i < 2; i++) {
            EnemyType enemyType3 = enemyTypeArr2[i];
            this.enemyBuffVulnerability[enemyType3.ordinal()][BuffType.STUN.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType3.ordinal()][BuffType.FREEZING.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType3.ordinal()][BuffType.THROW_BACK.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType3.ordinal()][BuffType.BLIZZARD.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType3.ordinal()][BuffType.REGENERATION.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType3.ordinal()][BuffType.SNOWBALL.ordinal()] = 0.0f;
        }
        EnemyType[] enemyTypeArr3 = {EnemyType.MOBCHAIN_BOSS_BODY, EnemyType.MOBCHAIN_BOSS_CREEP, EnemyType.MOBCHAIN_BOSS_HEAD};
        for (int i2 = 0; i2 < 3; i2++) {
            EnemyType enemyType4 = enemyTypeArr3[i2];
            this.enemyBuffVulnerability[enemyType4.ordinal()][BuffType.THROW_BACK.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType4.ordinal()][BuffType.SNOWBALL.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType4.ordinal()][BuffType.BLIZZARD.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType4.ordinal()][BuffType.FREEZING.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType4.ordinal()][BuffType.STUN.ordinal()] = 0.0f;
        }
        EnemyType[] enemyTypeArr4 = {EnemyType.SNAKE_BOSS_BODY, EnemyType.SNAKE_BOSS_HEAD, EnemyType.SNAKE_BOSS_TAIL};
        for (int i3 = 0; i3 < 3; i3++) {
            EnemyType enemyType5 = enemyTypeArr4[i3];
            this.enemyBuffVulnerability[enemyType5.ordinal()][BuffType.STUN.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType5.ordinal()][BuffType.POISON.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType5.ordinal()][BuffType.BLIZZARD.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType5.ordinal()][BuffType.FREEZING.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType5.ordinal()][BuffType.SNOWBALL.ordinal()] = 0.0f;
            this.enemyBuffVulnerability[enemyType5.ordinal()][BuffType.THROW_BACK.ordinal()] = 0.0f;
        }
        this.f11435a = new ScheduledUpdater();
        this.f11436b = new DelayedRemovalArray<>(false, 8, Enemy.EnemyReference.class);
        this.f11437d = 1;
        this.f11438k = new IntArray();
        this.f11439p = new DpsCounter[10];
        this.f11441r = false;
        this.f11443t = 0;
        this.f11444u = new Enemy.EnemyReference[16];
        this.listeners = new ListenerGroup<>(EnemySystemListener.class);
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postStateRestore() {
        super.postStateRestore();
        m21048b();
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.flyingEnemy = (boolean[]) kryo.readObject(input, boolean[].class);
        this.enemyDamageVulnerability = (boolean[][]) kryo.readObject(input, boolean[][].class);
        this.enemyBuffVulnerability = (float[][]) kryo.readObject(input, float[][].class);
        this.f11435a = (ScheduledUpdater) kryo.readObject(input, ScheduledUpdater.class);
        this.f11436b = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f11437d = input.readInt();
        this.f11438k = (IntArray) kryo.readObject(input, IntArray.class);
        this.f11439p = (DpsCounter[]) kryo.readObject(input, DpsCounter[].class);
        this.f11440q = input.readDouble();
        this.f11444u = (Enemy.EnemyReference[]) kryo.readObject(input, Enemy.EnemyReference[].class);
        this.lastDamageGiven = input.readFloat();
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
        this.f11445v = (_MapListener) kryo.readObjectOrNull(input, _MapListener.class);
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        if (!Config.isHeadless() && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DPS_CHART_ENABLED) != 0.0d) {
            this.f11442s = new double[300];
        }
        for (int i = 0; i < 10; i++) {
            this.f11439p[i] = new DpsCounter();
            this.f11439p[i].timeAccumulator = i * 1.0f;
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.flyingEnemy);
        kryo.writeObject(output, this.enemyDamageVulnerability);
        kryo.writeObject(output, this.enemyBuffVulnerability);
        kryo.writeObject(output, this.f11435a);
        kryo.writeObject(output, this.f11436b);
        output.writeInt(this.f11437d);
        kryo.writeObject(output, this.f11438k);
        kryo.writeObject(output, this.f11439p);
        output.writeDouble(this.f11440q);
        kryo.writeObject(output, this.f11444u);
        output.writeFloat(this.lastDamageGiven);
        kryo.writeObject(output, this.listeners);
        kryo.writeObjectOrNull(output, this.f11445v, _MapListener.class);
    }

    public void addEnemy(Enemy enemy, SpawnTile spawnTile, int i, Wave wave, float f) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        enemy.spawnTile = spawnTile;
        enemy.wave = wave;
        register(enemy, i);
        this.f8844S.loot.fillWithLoot(enemy);
        this.f8844S.map.spawnEnemy(enemy);
        enemy.passedTiles = f;
        enemy.setPositionToPath();
        updateEnemyCurrentTile(enemy);
    }

    public void register(Enemy enemy, Path path, int i, float f) {
        if (enemy.spawnTile != null) {
            this.f8844S.gameState.checkGameplayUpdateAllowed();
            m21045e(enemy);
            enemy.setRegistered(this.f8844S);
            this.f11435a.add(enemy, 0.1f);
            if (path != null) {
                if (i == -1) {
                    i = m21047c();
                }
                enemy.graphPath = new Path(path);
            }
            enemy.sideShiftIndex = i;
            enemy.passedTiles = f;
            enemy.sumPassedTiles = f;
            if (Game.f8589i.enemyManager.getMainEnemyType(enemy.type) == EnemyType.BOSS && enemy.hasDrawPriority()) {
                enemy.healthBarScale = 2.0f;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Enemy must have spawnTile set");
    }

    public void addEnemy(Enemy enemy, SpawnTile spawnTile, Path path, int i, Wave wave, float f) {
        this.f8844S.gameState.checkGameplayUpdateAllowed();
        enemy.spawnTile = spawnTile;
        enemy.wave = wave;
        register(enemy, path, i, f);
        this.f8844S.loot.fillWithLoot(enemy);
        this.f8844S.map.spawnEnemy(enemy);
        enemy.passedTiles = f;
        enemy.setPositionToPath();
        updateEnemyCurrentTile(enemy);
    }
}
