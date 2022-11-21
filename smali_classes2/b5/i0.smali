.class public final Lb5/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/h0;


# instance fields
.field public final a:Lb5/v4;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb5/v4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/i0;->a:Lb5/v4;

    iput-object p2, p0, Lb5/i0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lb5/q;)Lb5/v4;
    .locals 2

    iget-object v0, p0, Lb5/i0;->a:Lb5/v4;

    iget-object v1, p0, Lb5/i0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lb5/v4;->e(Ljava/lang/String;Lb5/q;)V

    iget-object p1, p0, Lb5/i0;->a:Lb5/v4;

    return-object p1
.end method
