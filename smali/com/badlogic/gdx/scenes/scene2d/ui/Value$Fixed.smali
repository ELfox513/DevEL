.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fixed"
.end annotation


# static fields
.field public static final b:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;


# instance fields
.field public final a:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x6f

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->b:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->a:F

    return-void
.end method

.method public static valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    return-object p0

    :cond_0
    const/high16 v0, -0x3ee00000    # -10.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    float-to-int v0, p0

    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->b:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    add-int/lit8 v0, v0, 0xa

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    aput-object v2, v1, v0

    :cond_1
    return-object v2

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->a:F

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->a:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
