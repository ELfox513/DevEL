.class public final enum Lcom/prineside/tdi2/Modifier$ConnectionSide;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/Modifier$ConnectionSide;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final enum BOTTOM_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final enum BOTTOM_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final enum LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final enum RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final enum TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final enum TOP_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final enum TOP_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final synthetic a:[Lcom/prineside/tdi2/Modifier$ConnectionSide;

.field public static final values:[Lcom/prineside/tdi2/Modifier$ConnectionSide;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-string v1, "BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Modifier$ConnectionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    new-instance v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Modifier$ConnectionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    new-instance v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-string v1, "TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Modifier$ConnectionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    new-instance v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Modifier$ConnectionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    new-instance v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Modifier$ConnectionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    new-instance v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Modifier$ConnectionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    new-instance v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Modifier$ConnectionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    new-instance v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Modifier$ConnectionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-static {}, Lcom/prineside/tdi2/Modifier$ConnectionSide;->c()[Lcom/prineside/tdi2/Modifier$ConnectionSide;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->a:[Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-static {}, Lcom/prineside/tdi2/Modifier$ConnectionSide;->values()[Lcom/prineside/tdi2/Modifier$ConnectionSide;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->values:[Lcom/prineside/tdi2/Modifier$ConnectionSide;

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

.method public static synthetic c()[Lcom/prineside/tdi2/Modifier$ConnectionSide;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/prineside/tdi2/Modifier$ConnectionSide;

    sget-object v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/Modifier$ConnectionSide;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/Modifier$ConnectionSide;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->a:[Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/Modifier$ConnectionSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object v0
.end method
