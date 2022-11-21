.class public final enum Lv1/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lb2/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv1/b;",
        ">;",
        "Lb2/r;"
    }
.end annotation


# static fields
.field public static final enum b:Lv1/b;

.field public static final enum d:Lv1/b;

.field public static final enum k:Lv1/b;

.field public static final enum p:Lv1/b;

.field public static final synthetic q:[Lv1/b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lv1/b;

    const-string v1, "RUNTIME"

    const/4 v2, 0x0

    const-string v3, "runtime"

    invoke-direct {v0, v1, v2, v3}, Lv1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv1/b;->b:Lv1/b;

    new-instance v1, Lv1/b;

    const-string v3, "BUILD"

    const/4 v4, 0x1

    const-string v5, "build"

    invoke-direct {v1, v3, v4, v5}, Lv1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lv1/b;->d:Lv1/b;

    new-instance v3, Lv1/b;

    const-string v5, "SYSTEM"

    const/4 v6, 0x2

    const-string v7, "system"

    invoke-direct {v3, v5, v6, v7}, Lv1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lv1/b;->k:Lv1/b;

    new-instance v5, Lv1/b;

    const-string v7, "EMBEDDED"

    const/4 v8, 0x3

    const-string v9, "embedded"

    invoke-direct {v5, v7, v8, v9}, Lv1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lv1/b;->p:Lv1/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lv1/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lv1/b;->q:[Lv1/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lv1/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv1/b;
    .locals 1

    const-class v0, Lv1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv1/b;

    return-object p0
.end method

.method public static values()[Lv1/b;
    .locals 1

    sget-object v0, Lv1/b;->q:[Lv1/b;

    invoke-virtual {v0}, [Lv1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv1/b;

    return-object v0
.end method


# virtual methods
.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv1/b;->a:Ljava/lang/String;

    return-object v0
.end method
