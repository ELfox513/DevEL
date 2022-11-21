.class public final synthetic Ls5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# instance fields
.field public final synthetic a:Ls5/n;

.field public final synthetic b:Ls5/d;


# direct methods
.method public synthetic constructor <init>(Ls5/n;Ls5/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/j;->a:Ls5/n;

    iput-object p2, p0, Ls5/j;->b:Ls5/d;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ls5/j;->a:Ls5/n;

    iget-object v1, p0, Ls5/j;->b:Ls5/d;

    invoke-static {v0, v1}, Ls5/n;->f(Ls5/n;Ls5/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
