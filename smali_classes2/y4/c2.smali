.class public final synthetic Ly4/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly4/g2;

.field public final synthetic b:Lk5/c$b;


# direct methods
.method public synthetic constructor <init>(Ly4/g2;Lk5/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/c2;->a:Ly4/g2;

    iput-object p2, p0, Ly4/c2;->b:Lk5/c$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly4/c2;->a:Ly4/g2;

    iget-object v1, p0, Ly4/c2;->b:Lk5/c$b;

    invoke-virtual {v0, v1}, Ly4/g2;->a(Lk5/c$b;)V

    return-void
.end method
