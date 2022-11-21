.class public Lq5/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/b;->e(Ljava/lang/String;Lq5/a$b;)Lq5/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lq5/b;


# direct methods
.method public constructor <init>(Lq5/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq5/b$a;->b:Lq5/b;

    iput-object p2, p0, Lq5/b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
