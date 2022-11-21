.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/badlogic/gdx/utils/Json$Serializable;
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# static fields
.field public static final b:Lcom/badlogic/gdx/math/Vector3;

.field public static final d:Lcom/badlogic/gdx/math/Vector3;

.field public static final k:Lcom/badlogic/gdx/math/Vector3;

.field public static final p:Lcom/badlogic/gdx/math/Vector3;

.field public static final q:Lcom/badlogic/gdx/math/Vector3;

.field public static final r:Lcom/badlogic/gdx/math/Vector3;

.field public static final s:Lcom/badlogic/gdx/math/Quaternion;

.field public static final t:Lcom/badlogic/gdx/math/Quaternion;

.field public static final u:Lcom/badlogic/gdx/math/Matrix3;

.field public static final v:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->b:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->d:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->k:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->p:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->q:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->r:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->s:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->t:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->u:Lcom/badlogic/gdx/math/Matrix3;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->v:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 0

    return-void
.end method

.method public allocateChannels()V
    .locals 0

    return-void
.end method

.method public abstract copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public killParticles(II)V
    .locals 0

    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->a:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 0

    return-void
.end method
