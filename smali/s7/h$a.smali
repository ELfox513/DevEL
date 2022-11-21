.class public Ls7/h$a;
.super Ls7/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/h;->c(Ls7/d;JLokio/BufferedSource;)Ls7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Ls7/d;JLokio/BufferedSource;)V
    .locals 0

    iput-wide p2, p0, Ls7/h$a;->a:J

    iput-object p4, p0, Ls7/h$a;->b:Lokio/BufferedSource;

    invoke-direct {p0}, Ls7/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Ls7/h$a;->b:Lokio/BufferedSource;

    return-object v0
.end method
