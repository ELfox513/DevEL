.class public final synthetic Lr4/jm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/om2;


# direct methods
.method public constructor <init>(Lr4/om2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/jm2;->a:Lr4/om2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/jm2;->a:Lr4/om2;

    iget-object v0, v0, Lr4/om2;->c:Lr4/pm2;

    invoke-static {v0}, Lr4/pm2;->d(Lr4/pm2;)Lr4/d92;

    move-result-object v0

    invoke-virtual {v0}, Lr4/d92;->d()V

    return-void
.end method
