.class Lcom/prineside/tdi2/Config$1;
.super Lcom/badlogic/gdx/graphics/Color;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public final toFloatBits()F
    .locals 1

    sget v0, Lcom/badlogic/gdx/graphics/Color;->WHITE_FLOAT_BITS:F

    return v0
.end method
