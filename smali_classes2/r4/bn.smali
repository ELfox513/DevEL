.class public final Lr4/bn;
.super Lr4/bw;
.source "SourceFile"


# instance fields
.field public final a:Lu2/c;


# direct methods
.method public constructor <init>(Lu2/c;)V
    .locals 0

    invoke-direct {p0}, Lr4/bw;-><init>()V

    iput-object p1, p0, Lr4/bn;->a:Lu2/c;

    return-void
.end method


# virtual methods
.method public final x6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/bn;->a:Lu2/c;

    invoke-interface {v0, p1, p2}, Lu2/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
