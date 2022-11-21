.class public final enum Lc2/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum b:Lc2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final enum d:Lc2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final synthetic k:[Lc2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc2/b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc2/b;->a:Lc2/b;

    new-instance v1, Lc2/b;

    const-string v3, "MALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc2/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc2/b;->b:Lc2/b;

    new-instance v3, Lc2/b;

    const-string v5, "FEMALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc2/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc2/b;->d:Lc2/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lc2/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc2/b;->k:[Lc2/b;

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

.method public static valueOf(Ljava/lang/String;)Lc2/b;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-class v0, Lc2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc2/b;

    return-object p0
.end method

.method public static values()[Lc2/b;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lc2/b;->k:[Lc2/b;

    invoke-virtual {v0}, [Lc2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc2/b;

    return-object v0
.end method
