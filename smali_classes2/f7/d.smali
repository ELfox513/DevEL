.class public final Lf7/d;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"


# instance fields
.field public final a:Lf7/h;

.field public final b:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;Lj7/h;Ld7/b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    iput-object p1, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    new-instance v0, Lf7/h;

    invoke-direct {v0, p1, p2, p3}, Lf7/h;-><init>(Ljava/net/HttpURLConnection;Lj7/h;Ld7/b;)V

    iput-object v0, p0, Lf7/d;->a:Lf7/h;

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1, p2}, Lf7/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->b()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->c()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->d()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->e()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->g([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->i()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->m()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->n()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->o()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->p()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->r(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1, p2, p3}, Lf7/h;->t(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1, p2}, Lf7/h;->u(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->v(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1, p2, p3}, Lf7/h;->w(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->x()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->z()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->A()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->C()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->D()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->E()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->G()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->I()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->K()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->L()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->M(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->N(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->O(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->P(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->Q(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->R(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->S(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1, p2}, Lf7/h;->T(J)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1, p2}, Lf7/h;->U(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->V(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->W(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->X(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1, p2}, Lf7/h;->Y(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    iget-object v0, p0, Lf7/d;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0, p1}, Lf7/h;->Z(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    iget-object v0, p0, Lf7/d;->a:Lf7/h;

    invoke-virtual {v0}, Lf7/h;->b0()Z

    move-result v0

    return v0
.end method
