.class public final synthetic Lr4/tw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/ww1;


# direct methods
.method public constructor <init>(Lr4/ww1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tw1;->a:Lr4/ww1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lr4/tw1;->a:Lr4/ww1;

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Lr4/ww1;->d(Ljava/io/InputStream;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
