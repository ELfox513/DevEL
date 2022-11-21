.class public final Lr4/sl0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/tl0;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lr4/sl0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lr4/hm0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/hm0;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr4/sl0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr4/hm0;->q(Ljava/lang/String;)V

    return-void
.end method
