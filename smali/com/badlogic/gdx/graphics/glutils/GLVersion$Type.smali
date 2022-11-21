.class public final enum Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/GLVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final enum WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field public static final synthetic a:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v1, "OpenGL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v3, "GLES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v5, "WebGL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->a:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->a:[Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-object v0
.end method
