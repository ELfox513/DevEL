.class public final Lr4/l90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xm0;


# instance fields
.field public final synthetic a:Lr4/j90;


# direct methods
.method public constructor <init>(Lr4/o90;Lr4/j90;)V
    .locals 0

    iput-object p2, p0, Lr4/l90;->a:Lr4/j90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/l90;->a:Lr4/j90;

    invoke-virtual {v0}, Lr4/cn0;->d()V

    return-void
.end method
