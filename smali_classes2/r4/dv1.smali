.class public final enum Lr4/dv1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/dv1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr4/dv1;

.field public static final enum b:Lr4/dv1;

.field public static final enum d:Lr4/dv1;

.field public static final synthetic k:[Lr4/dv1;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lr4/dv1;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/dv1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/dv1;->a:Lr4/dv1;

    new-instance v1, Lr4/dv1;

    const-string v3, "SHAKE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr4/dv1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr4/dv1;->b:Lr4/dv1;

    new-instance v3, Lr4/dv1;

    const-string v5, "FLICK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr4/dv1;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr4/dv1;->d:Lr4/dv1;

    const/4 v5, 0x3

    new-array v5, v5, [Lr4/dv1;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr4/dv1;->k:[Lr4/dv1;

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

.method public static c(Ljava/lang/String;)Lr4/dv1;
    .locals 1

    const-class v0, Lr4/dv1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr4/dv1;

    return-object p0
.end method

.method public static values()[Lr4/dv1;
    .locals 1

    sget-object v0, Lr4/dv1;->k:[Lr4/dv1;

    invoke-virtual {v0}, [Lr4/dv1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/dv1;

    return-object v0
.end method
