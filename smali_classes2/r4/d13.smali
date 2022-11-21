.class public final Lr4/d13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/i13;


# instance fields
.field public final synthetic a:Lr4/m03;


# direct methods
.method public constructor <init>(Lr4/m03;)V
    .locals 0

    iput-object p1, p0, Lr4/d13;->a:Lr4/m03;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/j13;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lr4/b13;

    invoke-direct {v0, p0, p1, p2}, Lr4/b13;-><init>(Lr4/d13;Lr4/j13;Ljava/lang/CharSequence;)V

    return-object v0
.end method
