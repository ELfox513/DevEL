.class public final Lr4/o84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic d:Lr4/q84;


# direct methods
.method public constructor <init>(Lr4/q84;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lr4/o84;->d:Lr4/q84;

    iput-object p2, p0, Lr4/o84;->a:Ljava/lang/String;

    iput-wide p3, p0, Lr4/o84;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/o84;->d:Lr4/q84;

    invoke-static {v0}, Lr4/q84;->c(Lr4/q84;)Lr4/b94;

    move-result-object v0

    iget-object v1, p0, Lr4/o84;->a:Ljava/lang/String;

    iget-wide v2, p0, Lr4/o84;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lr4/b94;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lr4/o84;->d:Lr4/q84;

    invoke-static {v0}, Lr4/q84;->c(Lr4/q84;)Lr4/b94;

    move-result-object v0

    iget-object v1, p0, Lr4/o84;->d:Lr4/q84;

    invoke-virtual {v1}, Lr4/q84;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/b94;->b(Ljava/lang/String;)V

    return-void
.end method
