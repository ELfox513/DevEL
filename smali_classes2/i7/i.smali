.class public final synthetic Li7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li7/k;

.field public final synthetic b:Lk7/g;

.field public final synthetic d:Lk7/d;


# direct methods
.method public synthetic constructor <init>(Li7/k;Lk7/g;Lk7/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7/i;->a:Li7/k;

    iput-object p2, p0, Li7/i;->b:Lk7/g;

    iput-object p3, p0, Li7/i;->d:Lk7/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Li7/i;->a:Li7/k;

    iget-object v1, p0, Li7/i;->b:Lk7/g;

    iget-object v2, p0, Li7/i;->d:Lk7/d;

    invoke-static {v0, v1, v2}, Li7/k;->a(Li7/k;Lk7/g;Lk7/d;)V

    return-void
.end method
