.class public abstract Lcom/badlogic/gdx/utils/Scaling;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/badlogic/gdx/math/Vector2;

.field public static final contain:Lcom/badlogic/gdx/utils/Scaling;

.field public static final fill:Lcom/badlogic/gdx/utils/Scaling;

.field public static final fillX:Lcom/badlogic/gdx/utils/Scaling;

.field public static final fillY:Lcom/badlogic/gdx/utils/Scaling;

.field public static final fit:Lcom/badlogic/gdx/utils/Scaling;

.field public static final none:Lcom/badlogic/gdx/utils/Scaling;

.field public static final stretch:Lcom/badlogic/gdx/utils/Scaling;

.field public static final stretchX:Lcom/badlogic/gdx/utils/Scaling;

.field public static final stretchY:Lcom/badlogic/gdx/utils/Scaling;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->a:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->contain:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fillX:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fillY:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$6;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$6;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$7;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$7;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretchX:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$8;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$8;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretchY:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling$9;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Scaling$9;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
.end method
