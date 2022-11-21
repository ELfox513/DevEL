.class public final enum Lcom/badlogic/gdx/graphics/glutils/HdpiMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/glutils/HdpiMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Logical:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

.field public static final enum Pixels:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

.field public static final synthetic a:[Lcom/badlogic/gdx/graphics/glutils/HdpiMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    const-string v1, "Logical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;->Logical:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    const-string v3, "Pixels"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;->Pixels:Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;->a:[Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/HdpiMode;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/glutils/HdpiMode;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/HdpiMode;->a:[Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/glutils/HdpiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/glutils/HdpiMode;

    return-object v0
.end method
