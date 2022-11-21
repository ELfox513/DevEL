.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    }
.end annotation


# static fields
.field public static backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static debugActorColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugCellColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugTableColor:Lcom/badlogic/gdx/graphics/Color;

.field public static final u0:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field public static v0:[F

.field public static w0:[F


# instance fields
.field public P:I

.field public Q:I

.field public R:Z

.field public final S:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field public final T:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field public final U:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field public V:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field public W:Z

.field public X:[F

.field public Y:[F

.field public Z:[F

.field public a0:[F

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:F

.field public f0:[F

.field public g0:[F

.field public h0:[F

.field public i0:[F

.field public j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public n0:I

.field public o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field public p0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;",
            ">;"
        }
    .end annotation
.end field

.field public q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public r0:Z

.field public s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public t0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->u0:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t0:Z

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->y()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 0

    return-void
.end method

.method public add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 6
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->y()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->R:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->R:Z

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Q:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v3, :cond_4

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    if-nez v4, :cond_1

    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget-object v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    goto :goto_0

    :cond_1
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    :goto_0
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    aget-object v2, v1, v3

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    :goto_2
    if-ge v4, v2, :cond_3

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    if-ne v4, v5, :cond_2

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Q:I

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_7
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Table must have a skin set to use this method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .param p3    # Lcom/badlogic/gdx/graphics/Color;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    invoke-direct {v1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-object p0
.end method

.method public background(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Ljava/lang/String;)V

    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    return-object p0
.end method

.method public clearChildren(Z)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->u0:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Q:I

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->P:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->R:Z

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren(Z)V

    return-void
.end method

.method public clip()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setClip(Z)V

    return-object p0
.end method

.method public clip(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setClip(Z)V

    return-object p0
.end method

.method public columnDefaults(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    if-le v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->y()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v3, :cond_2

    :goto_1
    if-ge v3, p1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public bridge synthetic debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p0
.end method

.method public debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-super {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v1, p1, :cond_2

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public debugActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public debugCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public debugTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->j()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->g(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->u(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->r0:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->k(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipEnd()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->k(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->m(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->u(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :goto_1
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->j()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->h(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->v(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->r0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v3

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->l(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipEnd()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->l(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->n(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->v(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :goto_2
    return-void
.end method

.method public getAlign()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 5
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getCells()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getClip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->r0:Z

    return v0
.end method

.method public getColumnMinWidth(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->X:[F

    aget p1, v0, p1

    return p1
.end method

.method public getColumnPrefWidth(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Z:[F

    aget p1, v0, p1

    return p1
.end method

.method public getColumnWidth(I)F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->f0:[F

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public getColumns()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->P:I

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->c0:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->b0:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->e0:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->d0:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public getRow(F)I
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v5, v3, 0x1

    aget-object v3, v2, v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    iget v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    add-float/2addr v6, v7

    cmpg-float v6, v6, p1

    if-gez v6, :cond_1

    return v4

    :cond_1
    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    if-eqz v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getRowHeight(I)F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->g0:[F

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public getRowMinHeight(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Y:[F

    aget p1, v0, p1

    return p1
.end method

.method public getRowPrefHeight(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->a0:[F

    aget p1, v0, p1

    return p1
.end method

.method public getRows()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Q:I

    return v0
.end method

.method public getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public getTableDebug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->r0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public layout()V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->P:I

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Q:I

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->f0:[F

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->g0:[F

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    add-float/2addr v8, v7

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    add-float/2addr v10, v9

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->d0:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->b0:F

    sub-float/2addr v11, v12

    const/4 v14, 0x0

    cmpl-float v15, v11, v14

    if-nez v15, :cond_1

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->X:[F

    move/from16 v17, v9

    goto :goto_1

    :cond_1
    sub-float v12, v1, v12

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    sget-object v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->v0:[F

    invoke-virtual {v0, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v15

    sput-object v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->v0:[F

    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->X:[F

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Z:[F

    move/from16 v17, v9

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_2

    aget v18, v14, v9

    aget v19, v13, v9

    sub-float v18, v18, v19

    div-float v18, v18, v11

    mul-float v18, v18, v12

    add-float v19, v19, v18

    aput v19, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move-object v11, v15

    :goto_1
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->e0:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->c0:F

    sub-float/2addr v9, v12

    const/4 v12, 0x0

    cmpl-float v13, v9, v12

    if-nez v13, :cond_3

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Y:[F

    move/from16 v18, v7

    goto :goto_3

    :cond_3
    sget-object v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->w0:[F

    invoke-virtual {v0, v13, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v13

    sput-object v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->w0:[F

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->c0:F

    sub-float v14, v2, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Y:[F

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->a0:[F

    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_4

    aget v19, v15, v7

    aget v20, v14, v7

    sub-float v19, v19, v20

    div-float v19, v19, v9

    mul-float v19, v19, v12

    add-float v20, v20, v19

    aput v20, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object v9, v13

    :goto_3
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget-object v12, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v7, :cond_b

    aget-object v15, v12, v13

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v14, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    move-object/from16 v20, v12

    iget v12, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    move/from16 v21, v7

    iget-object v7, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move/from16 v22, v2

    iget-object v2, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v23, v10

    add-int v10, v14, v2

    move/from16 v25, v1

    move/from16 v24, v4

    move v1, v14

    const/4 v4, 0x0

    :goto_5
    if-ge v1, v10, :cond_5

    aget v26, v11, v1

    add-float v4, v4, v26

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    aget v1, v9, v12

    iget-object v10, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    move-object/from16 v26, v9

    iget-object v9, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    move-object/from16 v27, v11

    iget-object v11, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    move/from16 v28, v8

    iget-object v8, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    move/from16 v29, v3

    iget-object v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    iget-object v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    cmpg-float v7, v10, v11

    if-gez v7, :cond_6

    move v10, v11

    :cond_6
    cmpg-float v7, v9, v8

    if-gez v7, :cond_7

    move v9, v8

    :cond_7
    const/4 v7, 0x0

    cmpl-float v8, v3, v7

    if-lez v8, :cond_8

    cmpl-float v8, v10, v3

    if-lez v8, :cond_8

    goto :goto_6

    :cond_8
    move v3, v10

    :goto_6
    cmpl-float v8, v0, v7

    if-lez v8, :cond_9

    cmpl-float v7, v9, v0

    if-lez v7, :cond_9

    goto :goto_7

    :cond_9
    move v0, v9

    :goto_7
    iget v7, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    sub-float v7, v4, v7

    iget v8, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    sub-float/2addr v7, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    iget v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    sub-float v3, v1, v3

    iget v7, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    sub-float/2addr v3, v7

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    const/4 v0, 0x1

    if-ne v2, v0, :cond_a

    aget v0, v5, v14

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v5, v14

    :cond_a
    aget v0, v6, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v6, v12

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v12, v20

    move/from16 v7, v21

    move/from16 v2, v22

    move/from16 v10, v23

    move/from16 v4, v24

    move/from16 v1, v25

    move-object/from16 v9, v26

    move-object/from16 v11, v27

    move/from16 v8, v28

    move/from16 v3, v29

    goto/16 :goto_4

    :cond_b
    move/from16 v25, v1

    move/from16 v22, v2

    move/from16 v29, v3

    move/from16 v24, v4

    move/from16 v21, v7

    move/from16 v28, v8

    move/from16 v23, v10

    move-object/from16 v27, v11

    move-object/from16 v20, v12

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->h0:[F

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->i0:[F

    move/from16 v4, v29

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_c

    aget v8, v1, v7

    add-float/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    const/16 v16, 0x0

    cmpl-float v7, v3, v16

    if-lez v7, :cond_10

    sub-float v7, v25, v28

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v4, :cond_d

    aget v9, v5, v8

    sub-float/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    cmpl-float v8, v7, v16

    if-lez v8, :cond_10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v9, v4, :cond_f

    aget v11, v1, v9

    cmpl-float v12, v11, v16

    if-nez v12, :cond_e

    goto :goto_b

    :cond_e
    mul-float v11, v11, v7

    div-float/2addr v11, v3

    aget v10, v5, v9

    add-float/2addr v10, v11

    aput v10, v5, v9

    add-float/2addr v8, v11

    move v10, v9

    :goto_b
    add-int/lit8 v9, v9, 0x1

    const/16 v16, 0x0

    goto :goto_a

    :cond_f
    aget v1, v5, v10

    sub-float/2addr v7, v8

    add-float/2addr v1, v7

    aput v1, v5, v10

    :cond_10
    move/from16 v3, v24

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v3, :cond_11

    aget v8, v2, v7

    add-float/2addr v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_11
    const/16 v16, 0x0

    cmpl-float v7, v1, v16

    if-lez v7, :cond_15

    sub-float v7, v22, v23

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_12

    aget v9, v6, v8

    sub-float/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_12
    cmpl-float v8, v7, v16

    if-lez v8, :cond_15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_e
    if-ge v9, v3, :cond_14

    aget v11, v2, v9

    cmpl-float v12, v11, v16

    if-nez v12, :cond_13

    goto :goto_f

    :cond_13
    mul-float v11, v11, v7

    div-float/2addr v11, v1

    aget v10, v6, v9

    add-float/2addr v10, v11

    aput v10, v6, v9

    add-float/2addr v8, v11

    move v10, v9

    :goto_f
    add-int/lit8 v9, v9, 0x1

    const/16 v16, 0x0

    goto :goto_e

    :cond_14
    aget v1, v6, v10

    sub-float/2addr v7, v8

    add-float/2addr v1, v7

    aput v1, v6, v10

    :cond_15
    move/from16 v1, v21

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_19

    aget-object v7, v20, v2

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v8, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    goto :goto_13

    :cond_16
    iget v10, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    add-int v11, v10, v8

    const/4 v12, 0x0

    :goto_11
    if-ge v10, v11, :cond_17

    aget v13, v27, v10

    aget v14, v5, v10

    sub-float/2addr v13, v14

    add-float/2addr v12, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_17
    iget v10, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    iget v11, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    sub-float/2addr v12, v10

    int-to-float v10, v8

    div-float/2addr v12, v10

    cmpl-float v10, v12, v11

    if-lez v10, :cond_18

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    add-int/2addr v8, v7

    :goto_12
    if-ge v7, v8, :cond_18

    aget v10, v5, v7

    add-float/2addr v10, v12

    aput v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_18
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_19
    move/from16 v7, v28

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v4, :cond_1a

    aget v8, v5, v2

    add-float/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1a
    move/from16 v4, v23

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_1b

    aget v8, v6, v2

    add-float/2addr v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1b
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    and-int/lit8 v3, v2, 0x10

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v3, :cond_1c

    sub-float v3, v25, v7

    :goto_16
    add-float v3, v18, v3

    goto :goto_17

    :cond_1c
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1d

    sub-float v3, v25, v7

    div-float/2addr v3, v8

    goto :goto_16

    :cond_1d
    move/from16 v3, v18

    :goto_17
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_1e

    sub-float v2, v22, v4

    :goto_18
    add-float v9, v17, v2

    goto :goto_19

    :cond_1e
    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1f

    sub-float v2, v22, v4

    div-float/2addr v2, v8

    goto :goto_18

    :cond_1f
    move/from16 v9, v17

    :goto_19
    move v10, v3

    move v11, v9

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2c

    aget-object v12, v20, v2

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget-object v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v13

    const/4 v15, 0x0

    :goto_1b
    if-ge v13, v14, :cond_20

    aget v17, v5, v13

    add-float v15, v15, v17

    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    :cond_20
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v14, v13

    sub-float/2addr v15, v14

    add-float/2addr v10, v13

    iget-object v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v16, 0x0

    cmpl-float v17, v13, v16

    if-lez v17, :cond_21

    mul-float v13, v13, v15

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move/from16 v21, v1

    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    cmpl-float v8, v1, v16

    if-lez v8, :cond_22

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    goto :goto_1c

    :cond_21
    move/from16 v21, v1

    :cond_22
    :goto_1c
    cmpl-float v1, v14, v16

    if-lez v1, :cond_23

    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    aget v1, v6, v1

    mul-float v1, v1, v14

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    sub-float/2addr v1, v8

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    sub-float/2addr v1, v8

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    const/4 v8, 0x0

    cmpl-float v13, v1, v8

    if-lez v13, :cond_24

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    goto :goto_1d

    :cond_23
    const/4 v8, 0x0

    :cond_24
    :goto_1d
    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v13, v1, 0x8

    if-eqz v13, :cond_25

    iput v10, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    goto :goto_1e

    :cond_25
    and-int/lit8 v13, v1, 0x10

    if-eqz v13, :cond_26

    add-float v13, v10, v15

    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    sub-float/2addr v13, v14

    iput v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    goto :goto_1e

    :cond_26
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    sub-float v13, v15, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v10

    iput v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    :goto_1e
    and-int/lit8 v13, v1, 0x2

    if-eqz v13, :cond_27

    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    :goto_1f
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_20

    :cond_27
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_28

    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    aget v1, v6, v1

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    sub-float/2addr v1, v13

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    sub-float/2addr v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    goto :goto_1f

    :cond_28
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    aget v1, v6, v1

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    sub-float/2addr v1, v13

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    add-float/2addr v1, v13

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    sub-float/2addr v1, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    :goto_20
    sub-float v1, v22, v11

    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    sub-float/2addr v1, v14

    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    sub-float/2addr v1, v14

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t0:Z

    if-eqz v1, :cond_29

    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    :cond_29
    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_2a

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    move-object/from16 v18, v5

    iget v5, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    invoke-virtual {v1, v13, v14, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_21

    :cond_2a
    move-object/from16 v18, v5

    :goto_21
    iget-boolean v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    if-eqz v1, :cond_2b

    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    aget v1, v6, v1

    add-float/2addr v11, v1

    move v10, v3

    goto :goto_22

    :cond_2b
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v15, v1

    add-float/2addr v10, v15

    :goto_22
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v18

    move/from16 v1, v21

    const/high16 v8, 0x40000000    # 2.0f

    goto/16 :goto_1a

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v13, 0x0

    :goto_23
    if-ge v13, v1, :cond_2e

    aget-object v5, v2, v13

    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v6, :cond_2d

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_2d
    add-int/lit8 v13, v13, 0x1

    goto :goto_23

    :cond_2e
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v1, v2, :cond_2f

    sub-float v7, v7, v28

    sub-float v4, v4, v23

    invoke-virtual {v0, v3, v9, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->r(FFFF)V

    :cond_2f
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pad cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "right cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "left cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "top cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padBottom cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padLeft cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padRight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padTop cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->b:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    iput-object p5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->p0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(FFFF)V
    .locals 11

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q(FFFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    sub-float v3, v0, p2

    neg-float v5, p4

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    move v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    const/4 p3, 0x0

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget p4, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    move v0, p1

    :goto_0
    if-ge p3, p4, :cond_8

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v3, :cond_3

    :cond_2
    iget v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    iget v6, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    iget v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    sget-object v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    const/4 v2, 0x0

    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget-object v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    :goto_1
    if-ge v3, v4, :cond_4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->f0:[F

    aget v5, v5, v3

    add-float/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v4, v3

    sub-float/2addr v2, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->o0:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->g0:[F

    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    aget v3, v3, v4

    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    sub-float/2addr v3, v4

    iget v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    sub-float/2addr v3, v5

    add-float/2addr v4, p2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    sub-float v7, v5, v4

    neg-float v9, v3

    sget-object v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    move-object v5, p0

    move v6, v0

    move v8, v2

    invoke-virtual/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_6
    iget-boolean v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->g0:[F

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    aget v0, v0, v1

    add-float/2addr p2, v0

    move v0, p1

    goto :goto_2

    :cond_7
    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v2, v1

    add-float/2addr v0, v2

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_0
    return-object p1
.end method

.method public reset()V
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->u0:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->U:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    return-object p0
.end method

.method public row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->R:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->w()V

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->R:Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->u0:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->y()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->p0:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->p0:Lcom/badlogic/gdx/utils/Array;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->b:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->p0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->p0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 9
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v3

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v6

    add-float v7, v0, v2

    add-float v8, p1, v5

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    add-float v7, v1, v3

    add-float v8, v4, v6

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float p1, v0, p1

    if-nez p1, :cond_2

    cmpl-float p1, v1, v4

    if-nez p1, :cond_2

    cmpl-float p1, v2, v5

    if-nez p1, :cond_2

    cmpl-float p1, v3, v6

    if-eqz p1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Table must have a skin set to use this method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->r0:Z

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-void
.end method

.method public setRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t0:Z

    return-void
.end method

.method public setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->s0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-void
.end method

.method public varargs stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .param p1    # [Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1
.end method

.method public final t()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->W:Z

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    aget-object v5, v3, v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    if-nez v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->w()V

    iput-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->R:Z

    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->P:I

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Q:I

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->X:[F

    invoke-virtual {v0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v7

    iput-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->X:[F

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Y:[F

    invoke-virtual {v0, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v8

    iput-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Y:[F

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Z:[F

    invoke-virtual {v0, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v9

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Z:[F

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->a0:[F

    invoke-virtual {v0, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v10

    iput-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->a0:[F

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->f0:[F

    invoke-virtual {v0, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->f0:[F

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->g0:[F

    invoke-virtual {v0, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->g0:[F

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->h0:[F

    invoke-virtual {v0, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->h0:[F

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->i0:[F

    invoke-virtual {v0, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->x([FI)[F

    move-result-object v12

    iput-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->i0:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v2, :cond_d

    aget-object v16, v3, v14

    move-object/from16 v1, v16

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget v13, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    move/from16 v18, v2

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v19, v14

    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v20, v8

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_1

    aget v8, v12, v13

    const/16 v17, 0x0

    cmpl-float v8, v8, v17

    if-nez v8, :cond_1

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    aput v8, v12, v13

    :cond_1
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_2

    aget v8, v11, v4

    const/16 v17, 0x0

    cmpl-float v8, v8, v17

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v4

    :cond_2
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    move-object/from16 v21, v12

    if-nez v4, :cond_3

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    sub-float/2addr v12, v15

    const/4 v15, 0x0

    invoke-static {v15, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    :goto_1
    add-float/2addr v8, v12

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    iget v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Q:I

    const/4 v15, -0x1

    if-eq v12, v15, :cond_4

    aget-object v12, v3, v12

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v15, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    iget-object v12, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    sub-float/2addr v15, v12

    const/4 v12, 0x0

    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    add-float/2addr v8, v15

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    :cond_4
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    add-int v12, v4, v2

    if-ne v12, v5, :cond_5

    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    move v12, v15

    :goto_2
    add-float/2addr v8, v12

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    add-int/lit8 v12, v6, -0x1

    if-ne v13, v12, :cond_6

    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    :goto_3
    add-float/2addr v8, v12

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    move/from16 v22, v15

    iget-object v15, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    move/from16 v23, v6

    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    move/from16 v24, v5

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    move-object/from16 v25, v11

    iget-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    cmpg-float v14, v8, v15

    if-gez v14, :cond_7

    move v8, v15

    :cond_7
    cmpg-float v14, v12, v6

    if-gez v14, :cond_8

    move v12, v6

    :cond_8
    const/4 v14, 0x0

    cmpl-float v17, v5, v14

    if-lez v17, :cond_9

    cmpl-float v17, v8, v5

    if-lez v17, :cond_9

    goto :goto_4

    :cond_9
    move v5, v8

    :goto_4
    cmpl-float v8, v11, v14

    if-lez v8, :cond_a

    cmpl-float v8, v12, v11

    if-lez v8, :cond_a

    goto :goto_5

    :cond_a
    move v11, v12

    :goto_5
    iget-boolean v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t0:Z

    if-eqz v8, :cond_b

    float-to-double v14, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v15, v14

    move v8, v15

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v6, v14

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v5, v14

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    move v15, v8

    :cond_b
    const/4 v8, 0x1

    if-ne v2, v8, :cond_c

    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    iget v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v2, v8

    aget v8, v9, v4

    add-float/2addr v5, v2

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v9, v4

    aget v5, v7, v4

    add-float/2addr v15, v2

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v7, v4

    :cond_c
    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    add-float/2addr v2, v1

    aget v1, v10, v13

    add-float/2addr v11, v2

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v10, v13

    aget v1, v20, v13

    add-float/2addr v6, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v20, v13

    add-int/lit8 v14, v19, 0x1

    move/from16 v2, v18

    move-object/from16 v8, v20

    move-object/from16 v12, v21

    move/from16 v15, v22

    move/from16 v6, v23

    move/from16 v5, v24

    move-object/from16 v11, v25

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v24, v5

    move/from16 v23, v6

    move-object/from16 v20, v8

    move-object/from16 v25, v11

    move v6, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_13

    aget-object v11, v3, v8

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_10

    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v12

    move v15, v12

    :goto_7
    if-ge v15, v14, :cond_f

    aget v18, v25, v15

    const/16 v17, 0x0

    cmpl-float v18, v18, v17

    if-eqz v18, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_f
    move v15, v12

    :goto_8
    if-ge v15, v14, :cond_10

    move/from16 v18, v14

    int-to-float v14, v13

    aput v14, v25, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v18

    goto :goto_8

    :cond_10
    :goto_9
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v13, v14, :cond_11

    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_11

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    iget v15, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v13, v15

    aget v15, v7, v12

    sub-float/2addr v15, v13

    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aget v12, v9, v12

    sub-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_11
    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    if-ne v12, v14, :cond_12

    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    add-float/2addr v12, v13

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    aget v13, v20, v13

    sub-float/2addr v13, v12

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    aget v11, v10, v11

    sub-float/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_13
    const/4 v8, 0x0

    cmpl-float v11, v1, v8

    if-gtz v11, :cond_14

    cmpl-float v11, v2, v8

    if-lez v11, :cond_17

    :cond_14
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v6, :cond_17

    aget-object v12, v3, v11

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    cmpl-float v13, v1, v8

    if-lez v13, :cond_15

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v13, :cond_15

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_15

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v8, v13

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    add-float v14, v4, v8

    aput v14, v7, v13

    add-float/2addr v8, v1

    aput v8, v9, v13

    :cond_15
    const/4 v8, 0x0

    cmpl-float v13, v2, v8

    if-lez v13, :cond_16

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v13, :cond_16

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    add-float/2addr v8, v13

    iget v12, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    add-float v13, v5, v8

    aput v13, v20, v12

    add-float/2addr v8, v2

    aput v8, v10, v12

    :cond_16
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto :goto_a

    :cond_17
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v6, :cond_1f

    aget-object v2, v3, v1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_18
    iget v8, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    iget-object v11, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v12, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    iget-object v13, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    iget-object v14, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    cmpg-float v14, v13, v12

    if-gez v14, :cond_19

    move v13, v12

    :cond_19
    const/4 v14, 0x0

    cmpl-float v15, v11, v14

    if-lez v15, :cond_1a

    cmpl-float v14, v13, v11

    if-lez v14, :cond_1a

    goto :goto_c

    :cond_1a
    move v11, v13

    :goto_c
    iget-boolean v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->t0:Z

    if-eqz v13, :cond_1b

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-float v12, v12

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v11, v13

    :cond_1b
    iget v13, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    add-float/2addr v13, v2

    neg-float v2, v13

    add-int v13, v8, v4

    move v14, v2

    move v5, v8

    const/4 v15, 0x0

    :goto_d
    if-ge v5, v13, :cond_1c

    aget v18, v7, v5

    add-float v2, v2, v18

    aget v18, v9, v5

    add-float v14, v14, v18

    aget v18, v25, v5

    add-float v15, v15, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1c
    sub-float/2addr v12, v2

    const/4 v2, 0x0

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v11, v14

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    :goto_e
    if-ge v8, v13, :cond_1e

    cmpl-float v12, v15, v2

    if-nez v12, :cond_1d

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v14, v4

    div-float/2addr v12, v14

    goto :goto_f

    :cond_1d
    aget v12, v25, v8

    div-float/2addr v12, v15

    :goto_f
    aget v14, v7, v8

    mul-float v17, v5, v12

    add-float v14, v14, v17

    aput v14, v7, v8

    aget v14, v9, v8

    mul-float v12, v12, v11

    add-float/2addr v14, v12

    aput v14, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1e
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_1f
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->k0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->m0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->j0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->l0:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    add-float/2addr v2, v3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->b0:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->d0:F

    move/from16 v1, v24

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_20

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->b0:F

    aget v5, v7, v3

    add-float/2addr v4, v5

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->b0:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->d0:F

    aget v5, v9, v3

    add-float/2addr v4, v5

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->d0:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_20
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->c0:F

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->e0:F

    move/from16 v2, v23

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_21

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->c0:F

    aget v4, v20, v1

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->c0:F

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->e0:F

    aget v5, v10, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->e0:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_21
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->b0:F

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->d0:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->d0:F

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->c0:F

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->e0:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->e0:F

    return-void
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->n0:I

    return-object p0
.end method

.method public u(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v9

    move-object v5, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public final v(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->p0:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isTransform()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->p0:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->p0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v5, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v5, v1

    iget v6, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v6, v0

    iget v7, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p1, v5, v6, v7, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final w()V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_1

    aget-object v4, v1, v0

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->P:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->P:I

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Q:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->Q:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->S:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    return-void
.end method

.method public final x([FI)[F
    .locals 2

    if-eqz p1, :cond_1

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Ljava/util/Arrays;->fill([FIIF)V

    return-object p1

    :cond_1
    :goto_0
    new-array p1, p2, [F

    return-object p1
.end method

.method public final y()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->u0:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    return-object v0
.end method
