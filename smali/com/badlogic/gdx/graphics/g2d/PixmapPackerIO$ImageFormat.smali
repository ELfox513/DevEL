.class public final enum Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CIM:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

.field public static final enum PNG:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

.field public static final synthetic b:[Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    const-string v1, "CIM"

    const/4 v2, 0x0

    const-string v3, ".cim"

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->CIM:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    const-string v3, "PNG"

    const/4 v4, 0x1

    const-string v5, ".png"

    invoke-direct {v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->PNG:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->b:[Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->b:[Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->a:Ljava/lang/String;

    return-object v0
.end method
