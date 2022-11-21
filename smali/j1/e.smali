.class public final Lj1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj1/e$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj1/m;)V
    .locals 0

    invoke-direct {p0}, Lj1/e;-><init>()V

    return-void
.end method

.method public static b()Lj1/e$a;
    .locals 2

    new-instance v0, Lj1/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj1/e$a;-><init>(Lj1/m;)V

    return-object v0
.end method

.method public static synthetic c(Lj1/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lj1/e;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj1/e;->a:Ljava/lang/String;

    return-object v0
.end method
