.class public final enum Lcom/badlogic/gdx/Graphics$GraphicsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Graphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GraphicsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Graphics$GraphicsType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum JGLFW:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum LWJGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum LWJGL3:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum Mock:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum WebGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final synthetic a:[Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum iOSGL:Lcom/badlogic/gdx/Graphics$GraphicsType;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v1, "AndroidGL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v1, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v3, "LWJGL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/Graphics$GraphicsType;->LWJGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v3, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v5, "WebGL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/Graphics$GraphicsType;->WebGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v5, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v7, "iOSGL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/Graphics$GraphicsType;->iOSGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v7, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v9, "JGLFW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/badlogic/gdx/Graphics$GraphicsType;->JGLFW:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v9, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v11, "Mock"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/badlogic/gdx/Graphics$GraphicsType;->Mock:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v11, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v13, "LWJGL3"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/badlogic/gdx/Graphics$GraphicsType;->LWJGL3:Lcom/badlogic/gdx/Graphics$GraphicsType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/badlogic/gdx/Graphics$GraphicsType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/badlogic/gdx/Graphics$GraphicsType;->a:[Lcom/badlogic/gdx/Graphics$GraphicsType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Graphics$GraphicsType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/Graphics$GraphicsType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->a:[Lcom/badlogic/gdx/Graphics$GraphicsType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Graphics$GraphicsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Graphics$GraphicsType;

    return-object v0
.end method
