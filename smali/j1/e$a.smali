.class public final Lj1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

    invoke-direct {p0}, Lj1/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lj1/e;
    .locals 2

    iget-object v0, p0, Lj1/e$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lj1/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj1/e;-><init>(Lj1/m;)V

    iget-object v1, p0, Lj1/e$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lj1/e;->c(Lj1/e;Ljava/lang/String;)Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Purchase token must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lj1/e$a;
    .locals 0

    iput-object p1, p0, Lj1/e$a;->a:Ljava/lang/String;

    return-object p0
.end method
