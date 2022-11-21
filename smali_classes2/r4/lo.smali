.class public final Lr4/lo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/po;


# direct methods
.method public constructor <init>(Lr4/po;)V
    .locals 0

    iput-object p1, p0, Lr4/lo;->a:Lr4/po;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/lo;->a:Lr4/po;

    invoke-static {v0}, Lr4/po;->j(Lr4/po;)V

    return-void
.end method
