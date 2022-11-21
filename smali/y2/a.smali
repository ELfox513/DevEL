.class public final enum Ly2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly2/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum b:Ly2/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final synthetic d:[Ly2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ly2/a;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly2/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly2/a;->a:Ly2/a;

    new-instance v1, Ly2/a;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly2/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly2/a;->b:Ly2/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ly2/a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ly2/a;->d:[Ly2/a;

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

.method public static valueOf(Ljava/lang/String;)Ly2/a;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-class v0, Ly2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/a;

    return-object p0
.end method

.method public static values()[Ly2/a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Ly2/a;->d:[Ly2/a;

    invoke-virtual {v0}, [Ly2/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/a;

    return-object v0
.end method
