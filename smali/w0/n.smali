.class public final enum Lw0/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw0/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw0/n;

.field public static final enum b:Lw0/n;

.field public static final synthetic d:[Lw0/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lw0/n;

    const-string v1, "RUN_AS_NON_EXPEDITED_WORK_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw0/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/n;->a:Lw0/n;

    new-instance v1, Lw0/n;

    const-string v3, "DROP_WORK_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw0/n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/n;->b:Lw0/n;

    const/4 v3, 0x2

    new-array v3, v3, [Lw0/n;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lw0/n;->d:[Lw0/n;

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

.method public static valueOf(Ljava/lang/String;)Lw0/n;
    .locals 1

    const-class v0, Lw0/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/n;

    return-object p0
.end method

.method public static values()[Lw0/n;
    .locals 1

    sget-object v0, Lw0/n;->d:[Lw0/n;

    invoke-virtual {v0}, [Lw0/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/n;

    return-object v0
.end method
