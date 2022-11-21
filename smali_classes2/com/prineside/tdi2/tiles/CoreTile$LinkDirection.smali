.class public final enum Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/CoreTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final enum BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final enum BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final enum LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final enum RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final enum TOP:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final enum TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final enum TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final synthetic a:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

.field public static final values:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const-string v1, "RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const-string v1, "BOTTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-static {}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->c()[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->a:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-static {}, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->values()[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->values:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

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

.method public static synthetic c()[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getDeltaCol(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getDeltaRow(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getOpposite(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM_RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->TOP:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->LEFT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->RIGHT:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->BOTTOM:Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->a:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    return-object v0
.end method
