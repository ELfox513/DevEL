.class public final enum Lcom/badlogic/gdx/Application$ApplicationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Application$ApplicationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Android:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum Applet:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum HeadlessDesktop:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final synthetic a:[Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum iOS:Lcom/badlogic/gdx/Application$ApplicationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v1, "Android"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v1, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v3, "Desktop"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v3, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v5, "HeadlessDesktop"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->HeadlessDesktop:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v5, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v7, "Applet"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v7, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v9, "WebGL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v9, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v11, "iOS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/badlogic/gdx/Application$ApplicationType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/badlogic/gdx/Application$ApplicationType;->a:[Lcom/badlogic/gdx/Application$ApplicationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/Application$ApplicationType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->a:[Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Application$ApplicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method
