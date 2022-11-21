.class Lcom/badlogic/gdx/utils/Scaling$5;
.super Lcom/badlogic/gdx/utils/Scaling;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Scaling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Scaling;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .locals 0

    div-float/2addr p4, p2

    sget-object p3, Lcom/badlogic/gdx/utils/Scaling;->a:Lcom/badlogic/gdx/math/Vector2;

    mul-float p1, p1, p4

    iput p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float p2, p2, p4

    iput p2, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p3
.end method
