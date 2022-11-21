.class public final synthetic Lh7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh7/i;

.field public final synthetic b:Lj7/h;


# direct methods
.method public synthetic constructor <init>(Lh7/i;Lj7/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7/h;->a:Lh7/i;

    iput-object p2, p0, Lh7/h;->b:Lj7/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh7/h;->a:Lh7/i;

    iget-object v1, p0, Lh7/h;->b:Lj7/h;

    invoke-static {v0, v1}, Lh7/i;->b(Lh7/i;Lj7/h;)V

    return-void
.end method
