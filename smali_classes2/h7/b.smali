.class public final synthetic Lh7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh7/c;

.field public final synthetic b:Lj7/h;


# direct methods
.method public synthetic constructor <init>(Lh7/c;Lj7/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7/b;->a:Lh7/c;

    iput-object p2, p0, Lh7/b;->b:Lj7/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh7/b;->a:Lh7/c;

    iget-object v1, p0, Lh7/b;->b:Lj7/h;

    invoke-static {v0, v1}, Lh7/c;->a(Lh7/c;Lj7/h;)V

    return-void
.end method
