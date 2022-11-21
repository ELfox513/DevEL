.class public final Ly4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/t;


# instance fields
.field public final a:Ly4/k;

.field public b:Ly4/e0;


# direct methods
.method public synthetic constructor <init>(Ly4/k;Ly4/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/i;->a:Ly4/k;

    return-void
.end method


# virtual methods
.method public final a()Ly4/u;
    .locals 4

    iget-object v0, p0, Ly4/i;->b:Ly4/e0;

    const-class v1, Ly4/e0;

    invoke-static {v0, v1}, Ly4/m1;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Ly4/j;

    iget-object v1, p0, Ly4/i;->a:Ly4/k;

    iget-object v2, p0, Ly4/i;->b:Ly4/e0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ly4/j;-><init>(Ly4/k;Ly4/e0;Ly4/g;)V

    return-object v0
.end method

.method public final bridge synthetic b(Ly4/e0;)Ly4/t;
    .locals 0

    iput-object p1, p0, Ly4/i;->b:Ly4/e0;

    return-object p0
.end method
