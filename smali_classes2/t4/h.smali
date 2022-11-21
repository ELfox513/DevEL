.class public final synthetic Lt4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt4/l;

.field public final synthetic b:Lj5/j;


# direct methods
.method public synthetic constructor <init>(Lt4/l;Lj5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/h;->a:Lt4/l;

    iput-object p2, p0, Lt4/h;->b:Lj5/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt4/h;->a:Lt4/l;

    iget-object v1, p0, Lt4/h;->b:Lj5/j;

    invoke-virtual {v0, v1}, Lt4/l;->e(Lj5/j;)V

    return-void
.end method
