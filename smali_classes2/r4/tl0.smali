.class public final Lr4/tl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ul0;


# direct methods
.method public constructor <init>(Lr4/vl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lr4/sl0;

    invoke-direct {v0, p0, p1}, Lr4/sl0;-><init>(Lr4/tl0;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
