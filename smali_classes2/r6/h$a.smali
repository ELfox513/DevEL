.class public final enum Lr6/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr6/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr6/h$a;

.field public static final enum b:Lr6/h$a;

.field public static final enum d:Lr6/h$a;

.field public static final synthetic k:[Lr6/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lr6/h$a;

    const-string v1, "BAD_CONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr6/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr6/h$a;->a:Lr6/h$a;

    new-instance v1, Lr6/h$a;

    const-string v3, "UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr6/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr6/h$a;->b:Lr6/h$a;

    new-instance v3, Lr6/h$a;

    const-string v5, "TOO_MANY_REQUESTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr6/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr6/h$a;->d:Lr6/h$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lr6/h$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr6/h$a;->k:[Lr6/h$a;

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

.method public static valueOf(Ljava/lang/String;)Lr6/h$a;
    .locals 1

    const-class v0, Lr6/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr6/h$a;

    return-object p0
.end method

.method public static values()[Lr6/h$a;
    .locals 1

    sget-object v0, Lr6/h$a;->k:[Lr6/h$a;

    invoke-virtual {v0}, [Lr6/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr6/h$a;

    return-object v0
.end method
